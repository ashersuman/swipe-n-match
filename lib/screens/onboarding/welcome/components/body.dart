import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipe_n_match/screens/onboarding/login/login_screen.dart';
import 'package:swipe_n_match/screens/onboarding/welcome/components/background.dart';
import 'package:swipe_n_match/theme/constants.dart';
import 'package:swipe_n_match/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome to SwipeNWatch",
              style: TextStyle(
                fontSize: kHeading1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/images/cinema.svg",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
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
              text: 'Login',
            ),
            RoundedButton(
              onPress: () {},
              text: 'Signup',
              color: kPrimaryLightColor,
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
