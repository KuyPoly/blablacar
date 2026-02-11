import 'package:flutter/material.dart';
import '../../../model/ride/locations.dart';
import '../../theme/theme.dart';

enum LocationType { departure, arrival }

class InputLocation extends StatelessWidget {
  final Location? location;
  final VoidCallback onPressed;
  final Widget? trailingIcon;
  final LocationType type;

  const InputLocation({
    super.key,
    required this.location,
    required this.onPressed,
    this.trailingIcon,
    required this.type,
  });

  //getter of title if departure show only location name
  String get title =>
      "${location?.name}${type == LocationType.arrival ? ", ${location?.country.name}" : ""}";

  // getter of place holder
  String get placeHolder =>
      type == LocationType.arrival ? "Going to" : "Leaving from";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: location == null
          ? Icon(Icons.location_pin, color: BlaColors.iconLight)
          : Icon(Icons.radio_button_unchecked, color: BlaColors.iconLight),
      title: Text(
        location == null ? placeHolder : title,
        style: BlaTextStyles.button.copyWith(
          color: location == null ? BlaColors.greyLight : BlaColors.neutral,
        ),
      ),
      trailing: location == null ? null : trailingIcon,
    );
  }
}
