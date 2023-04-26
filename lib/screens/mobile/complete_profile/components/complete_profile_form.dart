import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../components/rounded_button.dart';
import '../../components/text_field_container.dart';

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildLastNameFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildAddressFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.03,
          ),
          RoundButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //Complete the form action
                }
              }),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Text(
            "By continuing you confirm that you agree \nwith our Terms and Conditions",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  TextFieldContainer buildAddressFormField() {
    return TextFieldContainer(
        child: TextFormField(
      onSaved: (newValue) => address = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullErro)) {
          setState(() {
            errors.add(kAddressNullErro);
          });
          return kAddressNullErro;
        } else if (value!.isEmpty && errors.contains(kAddressNullErro)) {
          return kAddressNullErro;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullErro)) {
          removeError(error: kAddressNullErro);
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter Address",
        labelText: "Address",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }

  TextFieldContainer buildPhoneNumberFormField() {
    return TextFieldContainer(
        child: TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhonNumberNullError)) {
          setState(() {
            errors.add(kPhonNumberNullError);
          });
          return kPhonNumberNullError;
        } else if (value!.isEmpty && errors.contains(kPhonNumberNullError)) {
          return kPhonNumberNullError;
        }
        return null;
      },
      keyboardType: TextInputType.number,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullErro)) {
          removeError(error: kNameNullErro);
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter phone number",
        labelText: "Phone Number",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }

  TextFieldContainer buildLastNameFormField() {
    return TextFieldContainer(
        child: TextFormField(
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullErro)) {
          setState(() {
            errors.add(kNameNullErro);
          });
          return kNameNullErro;
        } else if (value!.isEmpty && errors.contains(kNameNullErro)) {
          return kNameNullErro;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullErro)) {
          removeError(error: kAddressNullErro);
        }
      },
      onSaved: (newValue) => lastName = newValue!,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter Last Name",
        labelText: "Last Name",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.person_2_outlined),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }

  TextFieldContainer buildFirstNameFormField() {
    return TextFieldContainer(
        child: TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullErro)) {
          setState(() {
            errors.add(kNameNullErro);
          });
          return kNameNullErro;
        } else if (value!.isEmpty && errors.contains(kNameNullErro)) {
          return kNameNullErro;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullErro)) {
          removeError(error: kNameNullErro);
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter First Name",
        labelText: "First Name",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.person_2_outlined),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }
}
