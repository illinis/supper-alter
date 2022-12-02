import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:supper_app/services/services.dart';

class ProductionService {
  final client = baseService.client;
  final handleDioError = baseService.handleDioError;
  final handleValidationError = baseService.handleValidationError;

  Future<Response> getProductions() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
     final auth = jsonDecode(prefs.getString('@Supper:auth') ?? '');

      final registration = auth['registration'];
      final password = auth['password'];
      final companyId = auth['companyId'];

      final response = await client.post(
        '/production/save/',
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
