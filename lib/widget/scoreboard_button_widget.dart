import 'package:basketball_court_manager/model/Scoreboard.dart';
import 'package:flutter/material.dart';

class ScoreboardButtonWidget extends StatefulWidget {
  final String buttonText;
  final int pointForIncrement;
  final Scoreboard scoreboard;
  final ValueChanged onChanged;

  ScoreboardButtonWidget(this.buttonText, this.pointForIncrement, {this.scoreboard, this.onChanged});

  @override
  State<StatefulWidget> createState() => ScoreboardButtonState();

}

class ScoreboardButtonState extends State<ScoreboardButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      child: RaisedButton.icon(
        elevation: 4.0,
        icon: Icon(Icons.score),
        color: Theme.of(context).primaryColor,
        onPressed: () async {
          widget.scoreboard.point = widget.scoreboard.point + widget.pointForIncrement;
          widget.onChanged(widget.scoreboard.point);
        },
        label: Text(widget.buttonText,
            style: TextStyle(color: Colors.white, fontSize: 12.0)),
      ),
    );
  }
}
