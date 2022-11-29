// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/services/services.dart';

class ServiceItemProvider with ChangeNotifier {
  List<ServiceItem> _serviceItems = [];
  ServiceItemService _serviceItemService = ServiceItemService();
  final Isar isar;

  ServiceItemProvider({required this.isar});

  List<ServiceItem> getServiceItems() => _serviceItems;

  void setServiceItems(List<ServiceItem> productions) {
    _serviceItems = productions;
    notifyListeners();
  }

  Future<dynamic> insertNewServiceItem(ServiceItem prod) async {
    _serviceItems.insert(0, prod);
    await isar.writeTxn(() async {
      await isar.serviceItems.put(prod);
    });

    setServiceItems(_serviceItems);
  }

  Future<dynamic> fetchServiceItems() async {
    try {
      Response response = await _serviceItemService.getServiceItems();
      print("flag leo1");
      final List<ServiceItem> servItems = List.from(response.data.map((item) {
        item['created_at'] = DateTime.parse(item['created_at']);
        item['updated_at'] = DateTime.parse(item['updated_at']);
        if (item['unitaryValue'].runtimeType == int) {
          item['unitaryValue'] = item['unitaryValue'].toDouble();
        }
        return ServiceItem.fromJson(item);
      }));
      print("flag leo");
      print(servItems.length);
      await isar.writeTxn(() async {
        await isar.serviceItems.putAll(servItems);
      });
      print('outra flag');

      setServiceItems(servItems);

      return servItems;
    } catch (e) {
      return e.toString();
    }
  }
}
