import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:blabla/ui/widgets/actions/bla_button.dart';

class ButtonTestScreen extends StatelessWidget {
  const ButtonTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Button")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Primary
            BlaButton(
              isPrimary: true,
              text: "Primary Button",
              onPressed: () {},
            ),

            const SizedBox(height: BlaSpacings.s),
            //Secondary
            BlaButton(
              isPrimary: false,
              text: "Not Primary",
              onPressed: () {},
            ),

            const SizedBox(height: BlaSpacings.s),
            //secondary + leading icon
            BlaButton(
              isPrimary: false,
              text: "Not Primary",
              isLeading: true,
              icon: Icons.book,
              onPressed: () {},
            ),

            const SizedBox(height: BlaSpacings.s),
            //Primary + trailing icon
            BlaButton(
              isPrimary: true,
              text: "Primary with Icon",
              isLeading: false,
              icon: Icons.alarm,
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
