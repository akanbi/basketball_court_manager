import 'package:basketball_court_manager/widget/scoreboard_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBall Court Manager',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: BasketballCourtManagerHome('BBall Court Manager'),
    );
  }
}

class BasketballCourtManagerHome extends StatelessWidget {
  final String title;

  BasketballCourtManagerHome(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SafeArea(
          child: Row(
            children: [
              Expanded(child: ScoreboardWidget("70")),
              Expanded(child: ScoreboardWidget("99"))
            ],
          ),
        )
    );
  }
}
