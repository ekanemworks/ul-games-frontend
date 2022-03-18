import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/getstarted.dart';
import 'package:trivial_game/pages/public/login_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List screen_images = [
    "assets/landing_/backgroundimg.png",
    "assets/landing_/backgroundimg.png",
    "assets/landing_/backgroundimg.png",
  ];

  List topTexts = [
    'Play Games',
    'Earn Money',
    'Shop with Wins',
  ];

  List bodyTexts = [
    // 'The Baybn is a social dd dsdsd',
    'Dive into our trivia game and unlock amazing new challenges that keeps you on your feet.',
    'Turn your Knowledge to instant money as you play and earn, cash rewards, Airtime and Points.',
    'Shop in our E-commerce platform with points and rewards earn,',
  ];

  List content_Images = [
    // 'The Baybn is a social dd dsdsd',
    "assets/landing_img/img3.png",
    "assets/landing_img/img4.png",
    "assets/landing_img/img5.png",
  ];

  String casestudy = "test1.jpg";

  PageController controller = PageController();

  @override
  void initState() {
    // use session management class to set session
    // use session management class to set session
    _callSession();
    super.initState();
  }

  _callSession() {
    // use session management class to set session
    // use session management class to set session
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/img2.png'),
                fit: BoxFit.cover),
          ),
          child: PageView.builder(
            // scrollDirection: Axis.vertical,
            controller: controller,
            itemCount: 3,
            itemBuilder: (_, indexx) {
              return Container(
                width: double.maxFinite, // maximum width
                height: double.maxFinite, // maxium height
                child: Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          // color: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // color: Colors.blue,
                                padding: EdgeInsets.only(bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // width: 220,
                                      // height: 220,
                                      margin: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      // color: Colors.purple,
                                      // child: Image.asset('assets/default.png'),
                                      child: content_Images[indexx] != ""
                                          ? ClipRRect(
                                              // borderRadius: BorderRadius.circular(20),
                                              child: Image.asset(
                                                  content_Images[indexx]),
                                            )
                                          : Container(),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // color: Colors.purple,
                                padding: EdgeInsets.only(top: 20, bottom: 10),
                                // height: 20,
                                alignment: Alignment.center,
                                child: Container(
                                  // color: Colors.red,
                                  width: 103,
                                  child: Row(
                                    children: List.generate(3, (indexDots) {
                                      return Container(
                                        margin: const EdgeInsets.only(left: 4),
                                        height: 8,
                                        width: indexx == indexDots ? 30 : 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: indexx == indexDots
                                                ? Color(0xffF2BC1A)
                                                : Colors.grey.shade400),
                                      );
                                    }),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                // color: Colors.pink,
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  topTexts[indexx],
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                // width: 300,
                                // color: Colors.pink,
                                margin: EdgeInsets.only(left: 15, right: 15),
                                height: 100,
                                // margin: const EdgeInsets.only(top: 10),
                                alignment: Alignment.center,

                                child: Text(
                                  bodyTexts[indexx],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 19.0,
                                    color: Color(0xff808080),
                                    // color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                // width: 300,
                                width: double.maxFinite,
                                alignment: Alignment.center,

                                // color: Colors.red,
                                margin: const EdgeInsets.only(top: 20),
                                child:

                                    // ElevatedButton(
                                    //   onPressed: () {},
                                    //   child: Icon(Icons.arrow_forward_ios),
                                    //   // color: Color(0xffE7510E),
                                    // )

                                    ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      primary: Color(0xffF2BC1A)),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: const Icon(Icons.arrow_forward_ios),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 11.0),
                                  child: ElevatedButton(
                                    child: const Text(
                                      'Skip',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GetStarted(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //   flex: 1,
                      //   child: Container(
                      //     alignment: Alignment.centerLeft,
                      //     child: TextButton(
                      //       child: const Text(
                      //         'Skip',
                      //         style: TextStyle(fontSize: 18, color: Colors.black),
                      //       ),
                      //       onPressed: () {},
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}