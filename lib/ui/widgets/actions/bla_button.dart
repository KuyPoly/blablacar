import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class BlaButton extends StatelessWidget {
  final bool isPrimary;
  final IconData? icon;
  final double? width;
  final String text;
  final bool isLeading;
  final VoidCallback? onPressed;

  const BlaButton({
    super.key,
    required this.isPrimary,
    this.icon,
    this.isLeading = true,
    this.width,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? BlaColors.primary : BlaColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
            side: isPrimary
                ? BorderSide.none
                : BorderSide(color: BlaColors.greyLight),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buttonContent(),
        ),
      ),
    );
  }

  List<Widget> _buttonContent() {
    final buttonText = Text(
      text,
      style: BlaTextStyles.button.copyWith(
        color: isPrimary ? BlaColors.white : BlaColors.primary,
      ),
    );

    final buttonIcon = icon == null
        ? null
        : Icon(
            icon,
            size: 16,
            color: isPrimary ? BlaColors.white : BlaColors.primary,
          );

    if (buttonIcon == null) {
      return [buttonText];
    }

    return isLeading
        ? [buttonIcon, const SizedBox(width: BlaSpacings.s), buttonText]
        : [buttonText, const SizedBox(width: BlaSpacings.s), buttonIcon];
  }
}
