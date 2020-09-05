import 'package:basketball_court_manager/widget/scoreboard_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScoreboardWidget extends StatelessWidget {
  final String score;

  ScoreboardWidget(this.score);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              score,
              style: TextStyle(color: Colors.grey, fontSize: 50),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget("3 Points"),
            )),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget("2 Points"),
            )),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget("Free throw"),
            )),
      ],
    );
  }
}
