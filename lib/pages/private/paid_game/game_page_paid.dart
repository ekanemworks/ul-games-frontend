import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/paid_game/game_result.dart';

class GamePagePaid extends StatefulWidget {
  @override
  _GamePagePaidState createState() => _GamePagePaidState();
}

class _GamePagePaidState extends State<GamePagePaid> {
  static const maxSeconds = 60;
  int lifelineExtraSeconds = 10;
  int seconds = maxSeconds;
  Timer? timer;

  bool lifeline5050isActive = true;
  bool lifelineRemove1isActive = true;
  bool lifelineBonusisActive = true;

  String selectedValue = '';
  String _questionText = 'Who was the 45th president of America';
  List _options = [
    {'value': 'a', 'option': 'Bill Clinton'},
    {'value': 'b', 'option': 'George Bush'},
    {'value': 'c', 'option': 'Buhari'},
    {'value': 'd', 'option': 'Donald Trump'},
  ];
  List _questions = [
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    },
    {
      'question': 'Who was the 45th president of America',
      'correctOption': '',
      'options':
          "[{'value': 'a', 'option': 'Bill Clinton'},{'value': 'b', 'option': 'George Bush'},{'value': 'c', 'option': 'Buhari'},{'value': 'd', 'option': 'Donald Trump'},]"
    }
  ];

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        setState(() {
          timer.cancel();
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GameResult(),
          ),
        );
      } else {
        setState(() {
          seconds--;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

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
                image: AssetImage('assets/landing_img/default_bg2.png'),
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
                      child: Text('Q: 1/10'),
                    )
                  ],
                ),
              ),

              // Question tracker
              // Question tracker
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _questions.map((e) {
                    return Container(
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }).toList(),
                ),
              ),

              // question board
              // question board
              SizedBox(
                width: double.maxFinite,
                height: 240,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.maxFinite,
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
                      child: Center(
                        child: Text(
                          _questionText,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                            // 50/50 LIFELINE
                            // 50/50 LIFELINE
                            lifeline5050isActive
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        seconds =
                                            seconds + lifelineExtraSeconds;
                                        lifeline5050isActive = false;
                                      });
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffffffff),
                                            Color(0xff999999)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        border: Border.all(
                                          color: Color(0xff1971D2),
                                          width: 5,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '50/50',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 100,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff999999),
                                          Color(0xff999999)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      border: Border.all(
                                        color: Color(0xff1971D2),
                                        width: 5,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '50/50',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                            // REMOVE ONE LIFELINE
                            // REMOVE ONE LIFELINE
                            lifelineRemove1isActive == true
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        seconds =
                                            seconds + lifelineExtraSeconds;
                                        lifelineRemove1isActive = false;
                                      });
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffffffff),
                                            Color(0xff999999)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        border: Border.all(
                                          color: Color(0xff1971D2),
                                          width: 5,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          ' -1 Opt',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 120,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff999999),
                                          Color(0xff999999)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      border: Border.all(
                                        color: Color(0xff1971D2),
                                        width: 5,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        ' -1 Opt',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                            // BONUS LIFELINE
                            // BONUS LIFELINE
                            lifelineBonusisActive == true
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        seconds =
                                            seconds + lifelineExtraSeconds;
                                        lifelineBonusisActive = false;
                                      });
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffffffff),
                                            Color(0xff999999)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        border: Border.all(
                                          color: Color(0xff1971D2),
                                          width: 5,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Bonus',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 100,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff999999),
                                          Color(0xff999999)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      border: Border.all(
                                        color: Color(0xff1971D2),
                                        width: 5,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Bonus',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTimer(),
                  ],
                ),
              ),

              // Navigation:: Next or Back
              // Navigation:: Next or Back
              Container(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(width: 1, color: Colors.grey),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameResult(),
                      ),
                    );
                  },
                  child: Text(
                    'Next Question',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // ANSWER OPTIONS
              // ANSWER OPTIONS
              Container(
                height: 350,
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _options
                      .map((e) => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: RadioListTile<String>(
                              value: e['value'],
                              groupValue: selectedValue,
                              title: Text(e['option']),
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                          ))
                      .toList(),

                  // [
                  // OPTION: D
                  // OPTION: D
                  // InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     height: 70,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //       color: Colors.white,
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Radio(
                  //           value: 'a',
                  //           groupValue: 'groupValue',
                  //           onChanged: (value) {
                  //             print('ssasa');
                  //           },
                  //         ),
                  //         Text(
                  //           'Titanic',
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 20,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTime() {
    return Text(
      '$seconds',
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
    );
  }

  Widget buildTimer() {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: seconds / maxSeconds,
            valueColor: AlwaysStoppedAnimation(
              Colors.white,
            ),
            strokeWidth: 12,
            backgroundColor: Color(0xff2185F5),
          ),
          Center(
            child: buildTime(),
          )
        ],
      ),
    );
  }
}
