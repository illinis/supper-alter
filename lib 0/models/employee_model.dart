import 'package:isar/isar.dart';

part 'generated/employee_model.g.dart';

@collection
class Employee {
  final Id id;
  final String name;
  @Index()
  final String cardNumber;
  final int companyId;
  final int workId;
  final int positionId;

  Employee({
    required this.id,
    required this.name,
    required this.cardNumber,
    required this.companyId,
    required this.workId,
    required this.positionId,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      cardNumber: json['cardNumber'],
      companyId: json['company_id'],
      workId: json['work_id'],
      positionId: json['position_id'],
    );
  }
}
