import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScoreboardButtonWidget extends StatelessWidget {
  final String buttonText;

  ScoreboardButtonWidget(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return
      RaisedButton.icon(
        elevation: 4.0,
        icon: Icon(Icons.score),
        color: Theme.of(context).primaryColor,
        onPressed: () {},
        label: Text(
            buttonText,
            style: TextStyle(
            color: Colors.white, fontSize: 12.0)
        ),
    );
  }
}