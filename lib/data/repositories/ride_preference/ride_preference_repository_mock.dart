import 'ride_preference_repository.dart';
import '../../../model/ride_pref/ride_pref.dart';

class RidePreferencesRepositoryMock implements RidePreferencesRepository {
  final List<RidePreference> _history = [];

  @override
  List<RidePreference> getHistory() {
    return _history;
  }

  @override
  void addPreference(RidePreference preference) {
    _history.insert(0, preference);
}
}
