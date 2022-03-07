import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/signin_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to UnlockGames'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SigninPage(),
                ),
              );
            },
            icon: Icon(Icons.login),
          )
        ],
      ),
    );
  }
}
