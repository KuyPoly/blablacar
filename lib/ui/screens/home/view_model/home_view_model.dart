import 'package:flutter/material.dart';
import '../../../../services/ride_prefs_service.dart';
import '../../../../model/ride_pref/ride_pref.dart';

class HomeViewModel extends ChangeNotifier{
  RidePreference? get currentPreference => RidePrefsService.selectedPreference;

  List<RidePreference> get history =>
      RidePrefsService.preferenceHistory.reversed.toList();

  void selectPreference(RidePreference pref) {
    RidePrefsService.selectPreference(pref);
    notifyListeners();
  }
}
