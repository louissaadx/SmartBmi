import 'package:flutter/material.dart';
import 'Pages/Bmi_Core_Design.dart';
import 'constants.dart';

void main() => runApp(BMIHomePage());

class BMIHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(appBarTitle),
            ),
            elevation: appBarElevation,
            backgroundColor: appBarColor,
          ),
          backgroundColor: appBackGroundColor,
          body: BMICoreDesign(),
        ),
      ),
    );
  }
}
