import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/getstarted.dart';
import 'package:trivial_game/pages/public/login_page.dart';
import 'package:trivial_game/pages/public/register_page.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
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

  PageController _controller = PageController();
  int _currentPage = 0;
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
        brightness: Brightness.dark,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/default_bg.png'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              PageView.builder(
                // scrollDirection: Axis.vertical,
                controller: _controller,
                itemCount: 3,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (_, indexx) {
                  return Container(
                    width: double.maxFinite, // maximum width
                    height: double.maxFinite, // maxium height
                    // color: Colors.grey,
                    child: Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              // in container if you want to show a background image you need box decoration
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/main/titleLogo.png'),
                                  fit: BoxFit.cover),
                            ),
                            // ClipRRect(

                            //   // borderRadius: BorderRadius.circular(20),
                            //   child: Image.asset('assets/main/unlockgames_98.png'),
                            // ),
                          ),
                          Container(
                            // color: Colors.green,
                            padding: EdgeInsets.only(top: 20),
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
                                                  content_Images[indexx],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                                    width: 105,
                                    child: Row(
                                      children: List.generate(3, (indexDots) {
                                        return Container(
                                          margin:
                                              const EdgeInsets.only(left: 4),
                                          height: 8,
                                          width: indexx == indexDots ? 40 : 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: indexx == indexDots
                                                  ? Color(0xffBD4900)
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
                                      fontSize: 20.0,
                                      color: Colors.white60,
                                      // color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
                    // alignment: Alignment.centerLeft,
                    child: _currentPage == 2

                        // FOR GET STARTED AND LOGIN
                        // FOR GET STARTED AND LOGIN
                        ? Container(
                            height: 130,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffEE5E04),
                                        Color(0xff813404)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(23.0),
                                    border: Border.all(
                                      color: Color(0xff344A61),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: double.maxFinite, // <-- Your width
                                    height: 55,
                                    child: ElevatedButton(
                                      child: const Text(
                                        'Get Started',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Already have an account ?'),
                                      TextButton(
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LoginPage(),
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )

                        // FOR SKIP AND NEXT
                        // FOR SKIP AND NEXT
                        : Container(
                            height: 130,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffEE5E04),
                                        Color(0xff813404)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(23.0),
                                    // border: Border.all(
                                    //   color: Color(0xff344A61),
                                    // ),
                                  ),
                                  child: SizedBox(
                                    width: double.maxFinite, // <-- Your width
                                    height: 55,
                                    child: ElevatedButton(
                                      child: const Text(
                                        'Skip',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        _controller.animateToPage(2,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(23.0),
                                    border: Border.all(
                                      color: Color(0xff344A61),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: double.maxFinite, // <-- Your width
                                    height: 55,
                                    child: ElevatedButton(
                                      child: const Text(
                                        'Next',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      onPressed: () {
                                        _controller.animateToPage(
                                            _currentPage + 1,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
