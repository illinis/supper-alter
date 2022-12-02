import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:dio/dio.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/services/services.dart';

class ServiceItemProvider with ChangeNotifier {
  List<ServiceItem> _serviceItems = [];
  final ServiceItemService _serviceItemService = ServiceItemService();
  final Isar isar;

  ServiceItemProvider({required this.isar});

  List<ServiceItem> getServiceItems() => _serviceItems;

  Future<ServiceItem> getUniqueServiceItem(int id, String description) async {
    return _serviceItems.firstWhere(
        (element) => element.id == id && element.description == description);
  }

  void setServiceItems(List<ServiceItem> serviceItems) {
    _serviceItems = serviceItems;
    notifyListeners();
  }

  void insertNewServiceItem(ServiceItem serv) async {
    _serviceItems.insert(_serviceItems.length, serv);
    await isar.writeTxn(() async {
      await isar.serviceItems.put(serv);
    });

    setServiceItems(_serviceItems);
  }

  Future<List<ServiceItem>> fetchServiceItems() async {
    try {
      Response response = await _serviceItemService.getServiceItems();
      final List<ServiceItem> servItems = List.from(response.data.map((item) {
        item['created_at'] = DateTime.parse(item['created_at']);
        item['updated_at'] = DateTime.parse(item['updated_at']);
        if (item['unitaryValue'].runtimeType == int) {
          item['unitaryValue'] = item['unitaryValue'].toDouble();
        }
        return ServiceItem.fromJson(item);
      }));

      await isar.writeTxn(() async {
        await isar.serviceItems.putAll(servItems);
      });

      setServiceItems(servItems);

      return servItems;
    } catch (e) {
      return _serviceItems;
    }
  }

  Future<List<ServiceItem>> fetchLocalServiceItems() async {
    List<ServiceItem> servItems = [];

    servItems = await isar.serviceItems.filter().idGreaterThan(0).findAll();

    if (servItems.isNotEmpty) {
      _serviceItems = servItems;
      notifyListeners();
    }

    return servItems;
  }
}
