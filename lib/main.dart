import 'package:basketball_court_manager/model/Scoreboard.dart';
import 'package:basketball_court_manager/widget/scoreboard_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

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
  Scoreboard scoreboardOne = new Scoreboard(0);
  Scoreboard scoreboardTwo = new Scoreboard(0);

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
              Expanded(child: ScoreboardWidget(scoreboardOne)),
              Expanded(child: ScoreboardWidget(scoreboardTwo))
            ],
          ),
        )
    );
  }
}
