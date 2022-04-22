import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/paid_game/game_result.dart';

class GamePagePaid extends StatefulWidget {
  @override
  _GamePagePaidState createState() => _GamePagePaidState();
}

class _GamePagePaidState extends State<GamePagePaid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          width: double.maxFinite, // maximum width
          height: double.maxFinite, // maxium height
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/default_bg.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              // cash and question number
              // cash and question number
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Color(0xffB6D5F7), width: 2),
                      ),
                      child: Text(
                        '₦ 11,650',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Color(0xffB6D5F7), width: 2),
                      ),
                      child: Text('Q: 5/10'),
                    )
                  ],
                ),
              ),
              // question tracking: dots
              // question tracking: dots
              Container(
                child: Row(
                  children: [],
                ),
              ),
              // question board
              // question board
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 20),
                height: 240,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      // color: Colors.pink,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff206AB8), Color(0xff2D79C8)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xffB6D5F7),
                          width: 5,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child:
                          // CONTAINER HOLDING THE ROW OF THE LIFELINE
                          // CONTAINER HOLDING THE ROW OF THE LIFELINE
                          Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 40,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 100,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xff1971D2),
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '50/50',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xff1971D2),
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '-1 Option',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xff1971D2),
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  'Bonus',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // TIMER DISPLAY
              // TIMER DISPLAY
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameResult(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              // ANSWER OPTIONS
              // ANSWER OPTIONS
              Container(
                height: 350,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: 'a',
                            groupValue: 'groupValue',
                            onChanged: (value) {
                              print('ssasa');
                            },
                          ),
                          Text(
                            'Mission Impossible',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: 'a',
                            groupValue: 'groupValue',
                            onChanged: (value) {
                              print('ssasa');
                            },
                          ),
                          Text(
                            'Justice League',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: 'a',
                            groupValue: 'groupValue',
                            onChanged: (value) {
                              print('ssasa');
                            },
                          ),
                          Text(
                            'Batman',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: 'a',
                            groupValue: 'groupValue',
                            onChanged: (value) {
                              print('ssasa');
                            },
                          ),
                          Text(
                            'Titanic',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
