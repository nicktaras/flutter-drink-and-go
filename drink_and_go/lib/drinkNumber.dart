import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

const PrimaryTextColor = const Color.fromARGB(255, 255, 255, 255);
const PrimaryColor = const Color.fromARGB(255, 54, 176, 170);
const SecondaryColor = const Color.fromARGB(255, 33, 120, 115);
const TertiaryColor = const Color.fromARGB(255, 78, 189, 184);

class DrinkNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        title: Text("Drink Number"),
        backgroundColor: SecondaryColor,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
