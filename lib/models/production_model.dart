import 'package:isar/isar.dart';

part 'generated/production_model.g.dart';

@collection
class Production {
  final Id id = Isar.autoIncrement;
  // Production data
  final DateTime dateTime;
  final int designationId;
  final int employeeId;
  final int productionId; //id (/production/save)
  final int quantity;
  final int scoreServiceItemId;
  final int serviceItemId;
  final bool statusSend;
  final double totalPartialScore;
  final double unitaryValue;

  Production(
      {required this.dateTime,
      required this.designationId,
      required this.employeeId,
      required this.productionId,
      required this.quantity,
      required this.scoreServiceItemId,
      required this.serviceItemId,
      required this.statusSend,
      required this.totalPartialScore,
      required this.unitaryValue});

  factory Production.fromJson(Map<String, dynamic> json) {
    return Production(
      dateTime: json['dateTime'],
      designationId: json['designation_id'],
      employeeId: json['employee_id'],
      productionId: json['id'],
      quantity: json['quantity'],
      scoreServiceItemId: json['scoreserviceitem_id'],
      serviceItemId: json['service_item_id'],
      statusSend: json['statusSend'],
      totalPartialScore: json['totalPartialScore'],
      unitaryValue: json['unitaryValue'],
    );
  }

  Map<String, dynamic> toJson() => {
        'dateTime': dateTime,
        'designation_id': designationId,
        'employee_id': employeeId,
        'id': productionId,
        'quantity': quantity,
        'scoreserviceitem_id': scoreServiceItemId,
        'service_item_id': serviceItemId,
        'statusSend': statusSend,
        'totalPartialScore': totalPartialScore,
        'unitaryValue': unitaryValue,
      };
}
