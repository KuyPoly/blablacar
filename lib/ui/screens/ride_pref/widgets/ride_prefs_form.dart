import 'package:flutter/material.dart';
import '../../../../model/ride/locations.dart';
import '../../../../model/ride_pref/ride_pref.dart';
import '../../../widgets/inputs/input_date.dart';
import '../../../widgets/inputs/input_location.dart';
import '../../../widgets/inputs/input_passenger.dart';
import '../../../widgets/display/bla_divider.dart';
import '../../../widgets/actions/bla_button.dart';
import '../../../widgets/actions/bla_switch.dart';
import '../location_picker_screen.dart';
import '../../../../utils/animations_util.dart';

///
/// A Ride Preference From is a view to select:
///   - A depcarture location
///   - An arrival location
///   - A date
///   - A number of seats
///
/// The form can be created with an existing RidePref (optional).
///
class RidePrefForm extends StatefulWidget {
  // The form can be created with an optional initial RidePref.
  final RidePref? initRidePref;

  const RidePrefForm({super.key, this.initRidePref});

  @override
  State<RidePrefForm> createState() => _RidePrefFormState();
}

class _RidePrefFormState extends State<RidePrefForm> {
  Location? departure;
  late DateTime departureDate;
  Location? arrival;
  late int requestedSeats;

  // ----------------------------------
  // Initialize the Form attributes
  // ----------------------------------

  @override
  void initState() {
    super.initState();
    if (widget.initRidePref != null) {
      departure = widget.initRidePref!.departure;
      departureDate = widget.initRidePref!.departureDate;
      arrival = widget.initRidePref!.arrival;
      requestedSeats = widget.initRidePref!.requestedSeats;
    } else {
      departureDate = DateTime.now();
      requestedSeats = 1;
    }
  }

  // ----------------------------------
  // Handle events
  // ----------------------------------
  void onSwitch() {
    Location? temp = arrival;
    setState(() {
      arrival = departure;
      departure = temp;
    });
  }
  // ----------------------------------
  // Compute the widgets rendering
  // ----------------------------------

  Future<void> _openLocationPicker(LocationType type) async {
    final Location? selectedLocation = await Navigator.push<Location>(
      context,
      AnimationUtils.createBottomToTopRoute(const LocationPickerScreen()),
    );

    if (selectedLocation == null) return;

    setState(() {
      if (type == LocationType.departure) {
        departure = selectedLocation;
      } else {
        arrival = selectedLocation;
      }
    });
  }

  // ----------------------------------
  // Build the widgets
  // ----------------------------------
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputLocation(
          location: departure,
          onPressed: () => _openLocationPicker(LocationType.departure),
          type: LocationType.departure,
          trailingIcon: BlaSwitch(onPressed: onSwitch),
        ),
        BlaDivider(),
        InputLocation(
          location: arrival,
          onPressed: () => _openLocationPicker(LocationType.arrival),
          type: LocationType.arrival,
        ),
        BlaDivider(),
        InputDate(date: departureDate, onPressed: () {}),
        BlaDivider(),
        InputPassenger(passenger: requestedSeats, onPressed: () {}),
        BlaButton(isPrimary: true, text: "Search", onPressed: arrival == null || departure == null ? null : (){},),
      ],
    );
  }
}
