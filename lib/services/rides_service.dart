import '../data/dummy_data.dart';
import '../model/ride/locations.dart';
import '../model/ride/ride.dart';

class RidesService {
  static List<Ride> availableRides = fakeRides;

  static get allRides => availableRides; // TODO for now fake data

  //
  //  filter the rides starting from given departure location
  //
  static List<Ride> filterByDeparture(Location departure) {
    List<Ride> filteredRide = [];
    allRides.map((e) {
      if (e.departureLocation == departure) {
        filteredRide.add(e);
      }
    });
    return filteredRide;
  }

  //
  //  filter the rides starting for the given requested seat number
  //
  static List<Ride> filterBySeatRequested(int requestedSeat) {
    List<Ride> filterSeat = [];
    allRides.map((e) {
      if (e.remainingSeats >=  requestedSeat) {
        filterSeat.add(e);
      }
    });
    return filterSeat;
  }

  //
  //  filter the rides   with several optional criteria (flexible filter options)
  //
  static List<Ride> filterBy({Location? departure, int? seatRequested}) {
    List<Ride> filterBy = [];
    allRides.map((e) {
      if () {
        filterBy.add(e);
      }
    });
    return [];
  }
}
