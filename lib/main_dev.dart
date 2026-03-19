import 'package:blabla/ui/screens/home/view_model/home_view_model.dart';
import 'package:blabla/ui/screens/rides_selection/view_model/rides_selection_view_model.dart';

import 'data/repositories/location/location_repository.dart';
import 'data/repositories/location/location_repository_mock.dart';
import 'data/repositories/ride/ride_repository.dart';
import 'data/repositories/ride/ride_repository_mock.dart';
import 'data/repositories/ride_preference/ride_preference_repository.dart';
import 'data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'main_common.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'ui/states/ride_preference_state.dart';

List<SingleChildWidget> get devProviders {
  return [
    // Locations repository
    Provider<LocationRepository>(create: (_) => LocationsRepositoryMock()),

    // Rides repository
    Provider<RideRepository>(create: (_) => RidesRepositoryMock()),

    // Ride preferences repository
    Provider<RidePreferencesRepository>(
      create: (_) => RidePreferencesRepositoryMock(),
    ),

    ChangeNotifierProvider<RidePreferenceState>(
      create: (_) => RidePreferenceState(repo: RidePreferencesRepositoryMock()),
    ),

    ChangeNotifierProvider<HomeViewModel>(create: (_) => HomeViewModel()),
    ChangeNotifierProvider<RidesSelectionViewModel>(create: (_) => RidesSelectionViewModel()),
  ];
}

void main() {
  mainCommon(devProviders);
}
