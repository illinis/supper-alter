import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'package:supper_app/models/models.dart';

class ProductionProvider with ChangeNotifier {
  List<Production> _productions = [];
  final Isar isar;

  ProductionProvider({required this.isar});

  List<Production> getProductions() => _productions;

  Future<Production> getUniqueProduction(int productionId) async {
    return _productions
        .firstWhere((element) => element.id == productionId);
  }

  void setProductions(List<Production> productions) {
    _productions = productions;
    notifyListeners();
  }

  void insertNewProduction(Production prod) async {
    _productions.insert(_productions.length, prod);
    await isar.writeTxn(() async {
      await isar.productions.put(prod);
    });
  }

  Future<List<Production>> fetchLocalProductions() async {
    List<Production> productions = [];

    productions = await isar.productions.filter().statusSendEqualTo(true).findAll();

    if (productions.isNotEmpty) {
      setProductions(productions);
    }

    return productions;
  }
}
