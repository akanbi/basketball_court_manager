import 'package:basketball_court_manager/model/Scoreboard.dart';
import 'package:basketball_court_manager/widget/scoreboard_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScoreboardWidget extends StatelessWidget {
  Scoreboard scoreboard;

  ScoreboardWidget(this.scoreboard);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              scoreboard.point.toString(),
              style: TextStyle(color: Colors.grey, fontSize: 50),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget(
                  "3 Points",
                  3,
                  scoreboard: scoreboard,
                  onChanged: (value) {
                      scoreboard.point = value;
                      int score = scoreboard.point;
                      print("Value recebido: $value");
                      print("SCORE: $score");
                    })
              ),
            ),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget(
                  "2 Points",
                  2,
                  scoreboard: scoreboard,
                  onChanged: (value) {
                    scoreboard.point = value;
                    scoreboard.point = value;
                    int score = scoreboard.point;
                    print("Value recebido: $value");
                    print("SCORE: $score");
                  }),
            )),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget(
                  "Free throw",
                  1,
                  scoreboard: scoreboard,
                  onChanged: (value) {
                    scoreboard.point = value;
                    scoreboard.point = value;
                    int score = scoreboard.point;
                    print("Value recebido: $value");
                    print("SCORE: $score");
                  },
              ),
            )),
      ],
    );
  }
}
