// ignore_for_file: non_constant_identifier_names

import 'package:isar/isar.dart';

part 'generated/production_model.g.dart';

@collection
class Production {
  final Id id = Isar.autoIncrement;
  //task data
  final DateTime date; //date and dateTime
  final int designation_id; //designation_id, scoreservice_id; ?
  final String taskName;
  final int service_item_id; //service_item_id (task id)
  final double unitaryValue; //'pontuação de serviço' ?
  final double finalTaskMensuration;
  //employers list
  final List<String> employeeIdList;
  Production(
      {required this.date,
      required this.designation_id,
      required this.taskName,
      required this.service_item_id,
      required this.unitaryValue,
      required this.finalTaskMensuration,
      required this.employeeIdList});

  factory Production.fromJson(Map<String, dynamic> json) {
    return Production(
        date: json['date'],
        designation_id: json['designation_id'],
        taskName: json['taskName'],
        service_item_id: json['service_item_id'],
        unitaryValue: json['unitaryValue'],
        finalTaskMensuration: json['finalTaskMensuration'],
        employeeIdList: json['employeeIdList']);
  }

  Map<String, dynamic> toJSON() => {
    'date': date,
    'designation_id': designation_id,
    'taskName': taskName,
    'service_item_id': service_item_id,
    'unitaryValue': unitaryValue,
    'finalTaskMensuration': finalTaskMensuration,
    'employeeIdList': employeeIdList
  };
}
