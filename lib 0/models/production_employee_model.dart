// ignore_for_file: non_constant_identifier_names

import 'package:isar/isar.dart';

part 'generated/production_employee_model.g.dart';

@collection
class ProductionEmployee {
  final Id id = Isar.autoIncrement;
  //employee attributes
  final int employee_id;
  //function attributes
  final int scoreserviceitem_id;
  final String serviceName;
  //task attributes
  final double unitaryValue;
  final double quantity;
  final double totalPartialScore;

  ProductionEmployee(
      {required this.employee_id,
      required this.scoreserviceitem_id,
      required this.serviceName,
      required this.unitaryValue,
      required this.quantity,
      required this.totalPartialScore});

  factory ProductionEmployee.fromJson(Map<String, dynamic> json) {
    return ProductionEmployee(
        employee_id: json['employee_id'],
        scoreserviceitem_id: json['scoreserviceitem_id'],
        serviceName: json['serviceName'],
        unitaryValue: json['unitaryValue'],
        quantity: json['quantity'],
        totalPartialScore: json['totalPartialScore']);
  }

  Map<String, dynamic> toJson() => {
    'employee_id': employee_id,
    'scoreserviceitem_id': scoreserviceitem_id,
    'serviceName': serviceName,
    'unitaryValue': unitaryValue,
    'quantity': quantity,
    'totalPartialScore': totalPartialScore,
  };
}
