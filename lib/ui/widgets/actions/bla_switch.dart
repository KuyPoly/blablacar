import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class BlaSwitch extends StatelessWidget {
  final VoidCallback onPressed;

  const BlaSwitch({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.swap_vert, color: BlaColors.primary,),
      onPressed: onPressed,
    );
  }
}
