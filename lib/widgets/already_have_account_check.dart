import 'package:flutter/material.dart';
import 'package:swipe_n_match/theme/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback? onPress;
  final MainAxisAlignment mainAxisAlignment;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.onPress, 
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
