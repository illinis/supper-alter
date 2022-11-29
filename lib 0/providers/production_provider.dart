// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'package:supper_app/models/models.dart';

class ProductionProvider with ChangeNotifier {
  List<Production> _products = [];
  final Isar isar;

  ProductionProvider({required this.isar});

  List<Production> getProduction() {
    return _products;
  }

  void setProductions(List<Production> productions) {
    _products = productions;
    notifyListeners();
  }

  Future<dynamic> insertNewProduction(Production prod) async {
    _products.insert(0, prod);
    await isar.writeTxn(() async {
      await isar.productions.put(prod);
    });

    setProductions(_products);
  }

  List<Production> getProductions(){
    
  }
}
