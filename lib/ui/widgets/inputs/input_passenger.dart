import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class InputPassenger extends StatelessWidget {
  final int passenger;
  final VoidCallback onPressed;

  const InputPassenger({
    super.key,
    required this.passenger,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(Icons.person_2_outlined, color: BlaColors.iconLight,),
      title: Text(
        passenger.toString(),
        style: BlaTextStyles.button.copyWith(color: BlaColors.neutral),
      ),
    );
  }
}
