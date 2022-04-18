import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/paid_game/game_page_paid.dart';

class GameTriggerCountDown extends StatefulWidget {
  @override
  _GameTriggerCountDownState createState() => _GameTriggerCountDownState();
}

class _GameTriggerCountDownState extends State<GameTriggerCountDown> {
  late Timer _timer;
  int _start = 3;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    const oneSec = const Duration(milliseconds: 150);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GamePagePaid(),
            ),
          );
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.maxFinite, // maximum width
          height: double.maxFinite, // maximum height
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/default_bg.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Text(
              _start == 0 ? 'Go' : _start.toString(),
              style: TextStyle(
                fontSize: 75,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
