import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            icon: Icon(
              Icons.lock,
            ),
            suffixIcon: Icon(Icons.visibility_off)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
