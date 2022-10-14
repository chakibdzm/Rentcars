import 'package:flutter/material.dart';
import 'package:rentcar/Screens/UserScreens/SignIn.dart';
import 'package:rentcar/Screens/onboarding.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rentcars',
      theme: ThemeData(
        fontFamily: 'GTWalsheimPro',
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home:Signinscreen(),


    );
  }
}
