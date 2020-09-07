import 'package:basketball_court_manager/widget/home_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBall Court Manager',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: BasketballCourtManagerSplashScreen(),
    );
  }
}

class BasketballCourtManagerSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        SplashScreen(
          seconds: 3,
          navigateAfterSeconds: BasketballCourtManagerHome("BBall Court Manager"),
          loaderColor: Colors.transparent,
          imageBackground: AssetImage("assets/BasketballSplash.png"),
        ),
    );
  }

}
