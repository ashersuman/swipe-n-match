import 'package:flutter/material.dart';
import 'package:swipe_n_match/theme/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: const Size(88, 36),
      backgroundColor: color,
      primary: textColor,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(29),
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: size.width * 0.8,
        child: TextButton(
          style: flatButtonStyle,
          onPressed: onPress,
          child: Text(text),
        ),
      ),
    );
  }
}
