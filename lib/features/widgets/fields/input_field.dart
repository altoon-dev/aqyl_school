import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.label,
    this.focusNode,
    this.keyboardType,
    this.obscureText = false,
  });

  final String label;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onTapOutside: (event) => focusNode?.unfocus(),
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
