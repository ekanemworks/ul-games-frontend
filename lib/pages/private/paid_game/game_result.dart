import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/paid_game/game_result_lost.dart';
import 'package:trivial_game/pages/private/paid_game/game_result_won.dart';

class GameResult extends StatefulWidget {
  @override
  _GameResultState createState() => _GameResultState();
}

class _GameResultState extends State<GameResult> {
  bool _win = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 50),
          width: double.maxFinite, // maximum width
          height: double.maxFinite, // maxium height
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/default_bg.png'),
                fit: BoxFit.cover),
          ),
          child: _win == true ? GameResultWon() : GameResultLost(),
        ),
      ),
    );
  }
}
