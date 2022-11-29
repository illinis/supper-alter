import 'package:isar/isar.dart';

part 'generated/registered_point_model.g.dart';

@collection
class RegisteredPoint {
  final Id id = Isar.autoIncrement;
  final int employeeId;
  final DateTime schedule;
  final String order;
  final double latitude;
  final double longitude;
  final double distance;
  final bool emergency;
  final bool sent;

  RegisteredPoint({
    required this.employeeId,
    required this.schedule,
    required this.order,
    this.latitude = 0,
    this.longitude = 0,
    this.distance = 0,
    this.emergency = false,
    this.sent = false,
  });

  RegisteredPoint copyWith({
    int? employeeId,
    DateTime? schedule,
    String? order,
    double? latitude,
    double? longitude,
    double? distance,
    bool? emergency,
    bool? sent,
  }) =>
      RegisteredPoint(
        employeeId: employeeId ?? this.employeeId,
        schedule: schedule ?? this.schedule,
        order: order ?? this.order,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        distance: distance ?? this.distance,
        emergency: emergency ?? this.emergency,
        sent: sent ?? this.sent,
      );
}
