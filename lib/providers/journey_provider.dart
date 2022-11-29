import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class JourneyProvider with ChangeNotifier {
  // Variable used for external control to when store a new journey
  bool isJourneySaved = false;

  bool getIsJourneySaved() => isJourneySaved;

  void setIsJourneySaved(bool newValue) {
    isJourneySaved = newValue;
  }

  // The type param is either "started" or "finished"
  Future<void> setNewJourney(String type) async {
    if (!isJourneySaved) {
      Box box = await Hive.openBox('journeys');
      await box.put(type, DateTime.now());
      await box.close();

      isJourneySaved = true;

      notifyListeners();
    }
  }

  Future<DateTime?> getLastJourney(String type) async {
    Box box = await Hive.openBox('journeys');
    final DateTime? lastJourney = box.get(type);
    await box.close();

    return lastJourney;
  }

  Future<List<DateTime?>> getAllJourneys() async {
    Box box = await Hive.openBox('journeys');
    final DateTime? lastStartedJourney = box.get('started');
    final DateTime? lastFinishedJourney = box.get('finished');
    await box.close();

    return [lastStartedJourney, lastFinishedJourney];
  }
}
