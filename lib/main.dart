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
          child:
          Container(height: double.infinity, width: double.infinity,
            child:
            GridView.count(
              crossAxisCount: 2,
              children: [
                ListView(
                  children: [
                    ScoreboardWidget("70"),
                  ],
                ),
                ListView(
                  children: [
                    ScoreboardWidget("99")
                  ],
                )
              ],
            ),
          )
      ),
    );
  }

}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
