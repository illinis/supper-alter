import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:supper_app/services/services.dart';

class EmployeeService {
  final client = baseService.client;
  final handleDioError = baseService.handleDioError;
  final handleValidationError = baseService.handleValidationError;

  /// Get employees and authenticate user
  Future<Response> getEmployees(
      String registration, String password, int companyId) async {
    try {
      final response = await client.post(
        '/employee/list/in-lodging-of-team',
        data: FormData.fromMap({
          'auth':
              '{"email":"$registration","password":"$password","company_id":"${companyId.toString()}"}'
        }),
      );

      if (response.data is! List<dynamic> &&
          response.data['validation'] == false) {
        handleValidationError(response);
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('@Supper:auth',
          '{"registration":"$registration","password":"$password","companyId":"${companyId.toString()}"}');

      return response;
    } on DioError catch (e) {
      throw handleDioError(e);
    } catch (e) {
      rethrow;
    }
  }

  /// Get m-n table between employees and teams
  Future<Response> getTeamsEmployees() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final auth = jsonDecode(prefs.getString('@Supper:auth') ?? '');

      final registration = auth['registration'];
      final password = auth['password'];
      final companyId = auth['companyId'];

      final response = await client.post(
        '/employee-team/list/in-lodging-of-team',
        data: FormData.fromMap({
          'auth':
              '{"email":"$registration","password":"$password","company_id":"$companyId"}'
        }),
      );

      if (response.data is! List<dynamic> &&
          response.data['validation'] == false) {
        handleValidationError(response);
      }

      return response;
    } on DioError catch (e) {
      throw handleDioError(e);
    } catch (e) {
      rethrow;
    }
  }

  /// Get teams
  Future<Response> getTeams() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final auth = jsonDecode(prefs.getString('@Supper:auth') ?? '');

      final registration = auth['registration'];
      final password = auth['password'];
      final companyId = auth['companyId'];

      final response = await client.post(
        '/team/list/in-lodging',
        data: FormData.fromMap({
          'auth':
              '{"email":"$registration","password":"$password","company_id":"$companyId"}'
        }),
      );

      if (response.data is! List<dynamic> &&
          response.data['validation'] == false) {
        handleValidationError(response);
      }

      return response;
    } on DioError catch (e) {
      throw handleDioError(e);
    } catch (e) {
      rethrow;
    }
  }
}
