import 'package:basketball_court_manager/model/Scoreboard.dart';
import 'package:basketball_court_manager/widget/scoreboard_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScoreboardWidget extends StatefulWidget {
  final Scoreboard scoreboard;

  ScoreboardWidget(this.scoreboard);

  @override
  State<StatefulWidget> createState() => ScoreboardState();

}

class ScoreboardState extends State<ScoreboardWidget> {
  int point = 0;

  updateScore() {
    setState(() {
      point = widget.scoreboard.point;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              point.toString(),
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
                  scoreboard: widget.scoreboard,
                  onChanged: (value) {
                    widget.scoreboard.point = value;
                    updateScore();
                  })
              ),
            ),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget(
                  "2 Points",
                  2,
                  scoreboard: widget.scoreboard,
                  onChanged: (value) {
                    widget.scoreboard.point = value;
                    updateScore();
                  }),
            )),
        Container(
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: ScoreboardButtonWidget(
                  "Free throw",
                  1,
                  scoreboard: widget.scoreboard,
                  onChanged: (value) {
                    widget.scoreboard.point = value;
                    updateScore();
                  },
              ),
            )),
      ],
    );
  }
}
