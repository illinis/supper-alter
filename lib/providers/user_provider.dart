import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'package:supper_app/models/models.dart';
import 'package:supper_app/services/services.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final UserService _userService = UserService();
  final Isar isar;

  UserProvider({required this.isar});

  User? getUser() => _user;

  Future<void> setUser(User user) async {
    _user = user;
    notifyListeners();

    await isar.writeTxn(() async {
        await isar.users.put(user);
    });
  }

  Future<User?> fetchLocalUser() async {
    User? user;

    user = await isar.users.where().anyId().findFirst();

    if (user != null) {
      _user = user;
      notifyListeners();
    }
    return user;
  }

  Future<String?> fetchWorkName() async {
    try {
      Response response = await _userService.getWorkName();

      if (_user != null) {
        User? newUser =
            _user?.copyWith(workName: 'Obra: ${response.data['description']}');

        if (newUser != null) {
          setUser(newUser);
        }
      }

      return response.data['description'];
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('@Supper:auth');

      await isar.writeTxn(() async {
        await isar.users.where().anyId().deleteFirst();
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
