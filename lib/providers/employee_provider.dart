import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:isar/isar.dart';
import 'package:dio/dio.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/services/services.dart';

class EmployeeProvider with ChangeNotifier {
  List<Employee> _employees = [];
  final EmployeeService _employeeService = EmployeeService();
  final Isar isar;

  EmployeeProvider({required this.isar});

  List<Employee> getEmployees() => _employees;

  Future<void> setEmployees(List<Employee> employees) async {
    _employees = employees;
    notifyListeners();
  }

  Employee? getSingleEmployee(String cardNumber) {
    return _employees.firstWhereOrNull((e) => e.cardNumber == cardNumber);
  }

  Future<List<Employee>> fetchLocalEmployees() async {
    List<Employee> employees = [];
    employees = await isar.employees.where().findAll();

    if (employees.isNotEmpty) {
      _employees = employees;
      notifyListeners();
    }

    return employees;
  }

  Future<dynamic> fetchEmployees(
      String registration, String password, int companyId) async {
    try {
      Response response = await _employeeService.getEmployees(
        registration,
        password,
        companyId,
      );

      final List<Employee> employees = List.from(
        response.data.map((item) => Employee.fromJson(item)),
      );
      await isar.writeTxn(() async {
        await isar.employees.putAll(employees);
      });

      setEmployees(employees);

      return employees;
    } catch (e) {
      return e.toString();
    }
  }
}
