import '../../../data/dummy_data.dart';
import 'ride_repository.dart';
import '../../../model/ride/ride.dart';

class RidesRepositoryMock implements RideRepository {
  final List<Ride> _rides = [
    Ride(
      departureLocation: fakeLocations[0], // London
      departureDate: DateTime.now().add(Duration(hours: 3)),
      arrivalLocation: fakeLocations[19], // Paris
      arrivalDateTime: DateTime.now().add(Duration(hours: 8)),
      driver: fakeUsers[0],
      availableSeats: 2,
      pricePerSeat: 25.0,
    ),

    Ride(
      departureLocation: fakeLocations[0], // London
      departureDate: DateTime.now().add(Duration(hours: 10)),
      arrivalLocation: fakeLocations[19], // Paris
      arrivalDateTime: DateTime.now().add(Duration(hours: 9)),
      driver: fakeUsers[1],
      availableSeats: 1,
      pricePerSeat: 30.0,
    ),

    Ride(
      departureLocation: fakeLocations[2], // Birmingham
      departureDate: DateTime.now().add(Duration(days: 1)),
      arrivalLocation: fakeLocations[22], // Toulouse
      arrivalDateTime: DateTime.now().add(Duration(days: 1, hours: 4)),
      driver: fakeUsers[2],
      availableSeats: 2,
      pricePerSeat: 22.5,
    ),

    Ride(
      departureLocation: fakeLocations[3], // Liverpool
      departureDate: DateTime.now().add(Duration(days: 2)),
      arrivalLocation: fakeLocations[23], // Nice
      arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 6)),
      driver: fakeUsers[3],
      availableSeats: 3,
      pricePerSeat: 35.0,
    ),

    Ride(
      departureLocation: fakeLocations[4], // Leeds
      departureDate: DateTime.now().add(Duration(days: 2, hours: 5)),
      arrivalLocation: fakeLocations[24], // Nantes
      arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 10)),
      driver: fakeUsers[4],
      availableSeats: 4,
      pricePerSeat: 28.0,
    ),

    Ride(
      departureLocation: fakeLocations[5], // Glasgow
      departureDate: DateTime.now().add(Duration(days: 3)),
      arrivalLocation: fakeLocations[25], // Strasbourg
      arrivalDateTime: DateTime.now().add(Duration(days: 3, hours: 7)),
      driver: fakeUsers[5],
      availableSeats: 3,
      pricePerSeat: 40.0,
    ),

    Ride(
      departureLocation: fakeLocations[6], // Sheffield
      departureDate: DateTime.now().add(Duration(days: 3, hours: 2)),
      arrivalLocation: fakeLocations[26], // Montpellier
      arrivalDateTime: DateTime.now().add(Duration(days: 3, hours: 8)),
      driver: fakeUsers[0],
      availableSeats: 2,
      pricePerSeat: 26.0,
    ),

    Ride(
      departureLocation: fakeLocations[7], // Bristol
      departureDate: DateTime.now().add(Duration(days: 4)),
      arrivalLocation: fakeLocations[27], // Bordeaux
      arrivalDateTime: DateTime.now().add(Duration(days: 4, hours: 6)),
      driver: fakeUsers[1],
      availableSeats: 3,
      pricePerSeat: 29.0,
    ),

    Ride(
      departureLocation: fakeLocations[8], // Edinburgh
      departureDate: DateTime.now().add(Duration(days: 4, hours: 4)),
      arrivalLocation: fakeLocations[28], // Lille
      arrivalDateTime: DateTime.now().add(Duration(days: 4, hours: 9)),
      driver: fakeUsers[2],
      availableSeats: 4,
      pricePerSeat: 27.5,
    ),

    Ride(
      departureLocation: fakeLocations[9], // Leicester
      departureDate: DateTime.now().add(Duration(days: 5)),
      arrivalLocation: fakeLocations[29], // Rennes
      arrivalDateTime: DateTime.now().add(Duration(days: 5, hours: 5)),
      driver: fakeUsers[3],
      availableSeats: 3,
      pricePerSeat: 24.0,
    ),
  ];

  @override
  List<Ride> getRides() {
    return _rides;
  }
}
