import 'package:basketball_court_manager/model/Scoreboard.dart';
import 'package:basketball_court_manager/widget/scoreboard_widget.dart';
import 'package:flutter/material.dart';

class BasketballCourtManagerHome extends StatelessWidget {
  final String title;
  final Scoreboard scoreboardOne = new Scoreboard(0, "Home");
  final Scoreboard scoreboardTwo = new Scoreboard(0, "Visit");

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