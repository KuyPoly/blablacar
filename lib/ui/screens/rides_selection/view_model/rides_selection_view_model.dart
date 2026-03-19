import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/services/ride_prefs_service.dart';
import 'package:blabla/services/rides_service.dart';
import 'package:flutter/material.dart';

class RidesSelectionViewModel extends ChangeNotifier {
  RidePreference get selectedRidePreference =>
      RidePrefsService.selectedPreference!;

  List<RidePreference> get preferenceHistory =>
      RidePrefsService.preferenceHistory;

  List<Ride> get matchingRides =>
      RidesService.getRidesFor(selectedRidePreference);

  void updatePreference(RidePreference newPref) {
    RidePrefsService.selectPreference(newPref);
    notifyListeners(); 
  }

  void onRideSelected(Ride ride) {
    // TODO: handle ride selection
  }
  
  void onFilterPressed() {
    // TODO
  }
}
