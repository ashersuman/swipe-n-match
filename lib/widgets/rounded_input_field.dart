import 'package:flutter/material.dart';
import 'package:swipe_n_match/theme/constants.dart';
import 'package:swipe_n_match/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    this.onChanged, 
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: textInputType,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
