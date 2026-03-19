import '../../data/repositories/ride_preference/ride_preference_repository.dart';
import '../../model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePreferencesRepository _repo;
  late List<RidePreference> history;

  RidePreferenceState({required RidePreferencesRepository repo})
    : _repo = repo {
    history = _repo.getHistory();
  }

  RidePreference? currentPref;

  void selectPref(RidePreference preference) {
    if (currentPref == preference) return;

    currentPref = preference;
    _repo.addPreference(preference);
    history = _repo.getHistory();

    notifyListeners();
  }
}
