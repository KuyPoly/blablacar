import 'package:blabla/model/ride/ride.dart';

import 'package:blabla/model/ride/locations.dart';
import 'package:blabla/services/rides_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //this test might not always work cuz the dummy data is generated at random :)

  test("Test filter by departure and seat request work", () {
    final Location dijon = Location(country: Country.france, name: "Dijon");

    final List<Ride> filteredRides = RidesService.filterBy(
      departure: dijon,
      seatRequested: 2,
    );

    expect(filteredRides.isNotEmpty, true);

    for (final ride in filteredRides) {
      expect(ride.departureLocation, dijon);
      expect(ride.availableSeats >= 2, true);
    }
  });
}
