import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';

class RoundedInputField extends StatelessWidget {
  final TextInputType inputsTyp;
  final IconData inputIcon, sufIcon;

  final String hintText, label;
  final ValueChanged<String> onchanged;
  const RoundedInputField({
    super.key,
    this.inputIcon = Icons.person,
    required this.hintText,
    required this.onchanged,
    this.inputsTyp = TextInputType.text,
    this.label = "Emal",
    this.sufIcon = Icons.import_contacts,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputsTyp,
      onChanged: onchanged,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: Icon(
          sufIcon,
          color: kPrimaryLightColor,
        ),
        hintText: hintText,
        prefixIcon: Icon(inputIcon),
      ),
      textAlign: TextAlign.center,
    );
  }
}
