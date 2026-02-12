import 'package:flutter/material.dart';

class BlaSearch extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final Widget? trailing;
  final Widget? leading;
  final VoidCallback? onTrailingPressed;
  final VoidCallback? onLeadinggPressed;

  const BlaSearch({
    super.key,
    required this.onChanged,
    required this.controller,
    this.trailing,
    this.leading,
    this.onTrailingPressed,
    this.onLeadinggPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44, 
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: "Search location",
          filled: true,
          fillColor: Colors.grey.shade200,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide.none,
          ),
          prefixIcon: IconButton(onPressed: onLeadinggPressed, icon: leading!),
          suffixIcon: trailing != null
              ? IconButton(icon: trailing!, onPressed: onTrailingPressed)
              : null,
        ),
      ),
    );
  }
}
