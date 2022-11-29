import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:supper_app/services/services.dart';

class UserService {
  final client = baseService.client;
  final handleDioError = baseService.handleDioError;
  final handleValidationError = baseService.handleValidationError;

  Future<Response> getWorkName() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final auth = jsonDecode(prefs.getString('@Supper:auth') ?? '');

      final registration = auth['registration'];
      final password = auth['password'];
      final companyId = auth['companyId'];

      final response = await client.post(
        '/work/single/now-of-tender',
        data: FormData.fromMap({
          'auth': '{"email":"$registration","password":"$password","company_id":"$companyId"}'
        }),
      );

      if (response.data['validation'] == false) {
        handleValidationError(response);
      }

      return response;
    } on DioError catch (e) {
      throw handleDioError(e);
    } catch (e) {
      rethrow;
    }
  }

  /// Make request to sign in to api
  Future<Response> signIn(String registration, String password, int companyId) async {
    try {
      final response = await client.post(
        '/tender/list/all',
        data: FormData.fromMap({
          'auth': '{"email":"$registration","password":"$password","company_id":"$companyId"}'
        }),
      );

      if (response.data['validation'] == false) {
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
