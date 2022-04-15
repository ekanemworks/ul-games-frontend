import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/onboarding.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  late Timer _timer;
  int _start = 3;

  @override
  void initState() {
    startTimer();
    print('hi there');
    // print(_userdata);
    super.initState();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
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
              builder: (context) => OnboardingPage(),
            ),
          );
        } else {
          setState(() {
            _start--;
          });
        }
        print(_start);
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
    return Container(
      width: double.maxFinite, // maximum width
      height: double.maxFinite, // maximum height
      decoration: BoxDecoration(
        // in container if you want to show a background image you need box decoration
        image: DecorationImage(
          image: AssetImage('assets/landing_img/start_screen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            // margin: EdgeInsets.only(bottom: 30),
            // child: ElevatedButton(
            //   child: Text('Restart'),
            //   onPressed: () {
            //     startTimer();
            //   },
            // ),
            ),
      ),
    );
  }
}
