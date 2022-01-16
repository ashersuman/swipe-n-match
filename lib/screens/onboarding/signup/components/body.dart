import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipe_n_match/screens/onboarding/login/login_screen.dart';
import 'package:swipe_n_match/screens/onboarding/signup/components/background.dart';
import 'package:swipe_n_match/widgets/already_have_account_check.dart';
import 'package:swipe_n_match/widgets/rounded_button.dart';
import 'package:swipe_n_match/widgets/rounded_input_field.dart';
import 'package:swipe_n_match/widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create Account",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.width * 0.02,
            ),
          
            SvgPicture.asset(
              "assets/images/signup.svg",
              height: size.height * 0.2,
            ),
          
            SizedBox(
              height: size.width * 0.03,
            ),
          
            Form(
              child: Column(
                children: const [
                  RoundedInputField(
                    hintText: "Name",
                    textInputType: TextInputType.name,
                  ),
                  RoundedInputField(
                    hintText: "Email",
                    icon: Icons.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                  RoundedPasswordField(hintText: "Password"),
                  RoundedPasswordField(hintText: "Confirm password"),
                ],
              ),
            ),
            RoundedButton(
              text: "Sign Up",
              onPress: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
