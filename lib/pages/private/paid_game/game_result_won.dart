import 'package:flutter/material.dart';

class GameResultWon extends StatefulWidget {
  @override
  _GameResultWonState createState() => _GameResultWonState();
}

class _GameResultWonState extends State<GameResultWon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        // LOGO
        Container(
          height: 60,
          width: 80,
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
              image: AssetImage('assets/main/titleLogo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // CONGRATS IMAGE
        Expanded(
          child: Container(
            // height: 200,
            // color: Colors.pink,

            width: double.maxFinite,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Color(0xff02264B),
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                color: Color(0xffB6D5F7),
                width: 4,
              ),
              image: DecorationImage(
                image: AssetImage('assets/gameimages/congratulations.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Congratulations',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Steve',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'You Won',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Claim your reward',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // GAME STATS
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          padding: EdgeInsets.all(15),
          width: double.maxFinite,
          color: Color(0xffFFBD1F),
          child: Text(
            'My Game Statistics',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        // COLLECT REWARD
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Color(0xff344A61),
            ),
          ),
          margin: EdgeInsets.all(5),
          child: SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              child: const Text(
                'Collect Reward',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onPressed: () {
                // openStakeDialog(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
