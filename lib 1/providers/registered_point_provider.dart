import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:isar/isar.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/utils/constants.dart';

class RegisteredPointProvider with ChangeNotifier {
  List<RegisteredPoint> _points = [];
  final Isar isar;

  RegisteredPointProvider({required this.isar});

  List<RegisteredPoint> getRegisteredPoints({
    bool lastInterstice = false,
    int intersticeSize = kIntersticeSize,
    String? order,
    int? employeeId,
    bool? emergency,
  }) {
    return _points.where((element) {
      // Verify if the registered point is on the last interstice
      if (lastInterstice &&
          element.schedule.difference(DateTime.now()).inHours >
              intersticeSize) {
        return false;
      }
      // Verify for other nullable filters comparable by an equality
      if (order != null && element.order != order) {
        return false;
      }
      if (employeeId != null && element.employeeId != employeeId) {
        return false;
      }
      // Always differentiate between emergency and other points
      if (emergency != null && element.emergency != emergency) {
        return false;
      }
      return true;
    }).toList();
  }

  void setRegisteredPoints(List<RegisteredPoint> registeredPoints) {
    _points = registeredPoints;
    notifyListeners();
  }

  Future<List<RegisteredPoint>> fetchLocalRegisteredPoints() async {
    List<RegisteredPoint> registeredPoints = [];

    registeredPoints = await isar.registeredPoints
        .filter()
        .scheduleGreaterThan(DateTime.now().subtract(const Duration(days: 1)))
        .findAll();

    if (registeredPoints.isNotEmpty) {
      _points = registeredPoints;
      notifyListeners();
    }

    return registeredPoints;
  }

  Future<dynamic> insertRegisteredPoint(RegisteredPoint registeredPoint) async {
    final employeePoints = getRegisteredPoints(
      lastInterstice: true,
      intersticeSize: 24,
      employeeId: registeredPoint.employeeId,
    );

    final RegisteredPoint? lastPoint = employeePoints
        .sorted((a, b) => b.schedule.compareTo(a.schedule))
        .firstOrNull;

    if (registeredPoint.order == "I") {
      // Validate if the employee has closed all points
      if (lastPoint?.order == "I") {
        return "O funcionário possui um ponto não finalizado.";
      }
      // Validate if the interstice of the employee has passed
      if (!registeredPoint.emergency &&
          employeePoints.firstWhereOrNull((element) =>
                  !element.emergency &&
                  element.order == "O" &&
                  element.schedule.difference(DateTime.now()).inHours <=
                      kIntersticeSize) !=
              null) {
        return "O período de interstício não foi finalizado";
      }
    }
    if (registeredPoint.order == "O") {
      // Validate if the employee has a open registered point
      if (employeePoints.isEmpty || lastPoint?.order == "O") {
        return "A jornada não foi iniciada";
      }
      // Validate if the point being closed is of the same type as the last
      debugPrint(registeredPoint.emergency.toString());
      debugPrint(lastPoint?.emergency.toString());
      if (registeredPoint.emergency != lastPoint?.emergency) {
        return "O ponto aberto é diferente do ponto fechado";
      }
    }

    // Create a new registered point
    _points.insert(0, registeredPoint);
    await isar.writeTxn(() async {
      await isar.registeredPoints.put(registeredPoint);
    });

    setRegisteredPoints(_points);

    // Return true to indicate that the point was registered with success
    return true;
  }
}
