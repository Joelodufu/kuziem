import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuziem/screens/mobile/components/text_field_container.dart';
import 'package:kuziem/utils/constants.dart';

class RoundedInputField extends StatelessWidget {
  final TextInputType inputsTyp;
  final IconData inputIcon;
  final String hintText;
  final ValueChanged<String> onchanged;
  const RoundedInputField({
    super.key,
    this.inputIcon = Icons.person,
    required this.hintText,
    required this.onchanged,
    this.inputsTyp = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      keyboardType: inputsTyp,
      onChanged: onchanged,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.input,
          color: kPrimaryLightColor,
        ),
        border: InputBorder.none,
        hintText: hintText,
        prefixIcon: Icon(inputIcon),
      ),
      textAlign: TextAlign.center,
    ));
  }
}
