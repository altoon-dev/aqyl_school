import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.label,
    this.focusNode,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
  });

  final String label;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onTapOutside: (event) => focusNode?.unfocus(),
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
