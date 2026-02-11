import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../../utils/date_time_utils.dart';

class InputDate extends StatelessWidget {
  final DateTime date;
  final VoidCallback onPressed;

  const InputDate({super.key, required this.date, required this.onPressed});

  String get formattedDate => DateTimeUtils.formatDateTime(date);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(Icons.calendar_month_outlined, color: BlaColors.iconLight),
      title: Text(
        formattedDate,
        style: BlaTextStyles.button.copyWith(color: BlaColors.neutral),
      ),
    );
  }
}
