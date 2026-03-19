import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/ui/screens/rides_selection/view_model/rides_selection_view_model.dart';
import 'ride_preference_modal.dart';
import 'package:blabla/ui/screens/rides_selection/widgets/rides_selection_header.dart';
import 'package:blabla/ui/screens/rides_selection/widgets/rides_selection_tile.dart';
import 'package:blabla/ui/theme/theme.dart';
import 'package:blabla/utils/animations_util.dart';
import 'package:flutter/material.dart';

class RideSelectionContent extends StatelessWidget {
  final RidesSelectionViewModel viewModel;

  const RideSelectionContent({super.key, required this.viewModel});

  void onRideSelected(BuildContext context, Ride ride) {
    // TODO: implement action when ride selected
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: BlaSpacings.m,
          right: BlaSpacings.m,
          top: BlaSpacings.s,
        ),
        child: Column(
          children: [
            RideSelectionHeader(
              ridePreference: viewModel.selectedRidePreference,
              onBackPressed: () => Navigator.pop(context),
              onFilterPressed: viewModel.onFilterPressed,
              onPreferencePressed: () async {
                final newPreference = await Navigator.of(context)
                    .push<RidePreference>(
                      AnimationUtils.createRightToLeftRoute(
                        RidePreferenceModal(
                          initialPreference: viewModel.selectedRidePreference,
                        ),
                      ),
                    );

                if (newPreference != null) {
                  viewModel.updatePreference(newPreference);
                }
              },
            ),

            SizedBox(height: 100),

            Expanded(
              child: ListView.builder(
                itemCount: viewModel.matchingRides.length,
                itemBuilder: (ctx, index) {
                  final ride = viewModel.matchingRides[index];

                  return RideSelectionTile(
                    ride: ride,
                    onPressed: () => viewModel.onRideSelected(ride),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
