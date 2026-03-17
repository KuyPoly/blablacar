import '../../../model/ride_pref/ride_pref.dart';

abstract class RidePreferencesRepository {
  List<RidePreference> getHistory();

  void addPreference(RidePreference preference);
}
