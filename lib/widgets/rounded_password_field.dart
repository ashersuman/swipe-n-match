import 'package:flutter/material.dart';
import 'package:swipe_n_match/theme/constants.dart';
import 'package:swipe_n_match/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;

  const RoundedPasswordField({
    Key? key,
    this.onChanged, 
    this.hintText="Password",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
