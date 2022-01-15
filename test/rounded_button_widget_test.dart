import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swipe_n_match/widgets/rounded_button.dart';

void main() {
  testWidgets('Rounded button has button text', (WidgetTester tester) async {
    Widget testWidget = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: RoundedButton(
          text: 'T',
          onPress: () {},
        ),
      ),
    );
    //Create the widget by telling the tester to build it
    await tester.pumpWidget(testWidget);

    //Create the finders
    final textFinder = find.text('T');

    expect(textFinder, findsOneWidget);
  });
}
