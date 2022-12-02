// ignore_for_file: non_constant_identifier_names

import 'package:isar/isar.dart';

part 'generated/service_item_model.g.dart';

@collection
class ServiceItem {
  final Id id = Isar.autoIncrement;
  //service data
  final int serviceId;
  final double unitaryValue;
  final String unitService;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int serviceClassificationId;
  final int? progressiveTablesId;
  final int companyId;
  final int? goal;
  final int workId;
  //service classification id variables
  final String? abbreviation = null;
  final String? serviceClassificationDescription =
      null; //troca de dormentes, coletivo, individual

  ServiceItem({
    required this.serviceId,
    required this.unitaryValue,
    required this.unitService,
    required this.description,
    required this.updatedAt,
    required this.createdAt,
    required this.serviceClassificationId,
    this.progressiveTablesId,
    required this.companyId,
    this.goal,
    required this.workId,
  });

  factory ServiceItem.fromJson(Map<String, dynamic> json) {
    return ServiceItem(
        serviceId: json['id'],
        unitaryValue: json['unitaryValue'],
        unitService: json['unitService'],
        description: json['description'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        serviceClassificationId: json['service_classification_id'],
        progressiveTablesId: json['progressivetables_id'],
        companyId: json['company_id'],
        goal: json['goal'],
        workId: json['work_id']);
  }

  Map<String, dynamic> toJSON() => {
        'id': serviceId,
        'unitaryValue': unitaryValue,
        'unitService': unitService,
        'description': description,
        'created_at': createdAt,
        'updated_t': updatedAt,
        'service_classification_id': serviceClassificationId,
        'progressivetables_id': progressiveTablesId,
        'company_id': companyId,
        'goal': goal,
        'work_id': workId
      };
}
