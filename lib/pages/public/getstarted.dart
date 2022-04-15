import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/login_page.dart';
import 'package:trivial_game/pages/public/register_page.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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
          width: double.maxFinite, // maximum width
          height: double.maxFinite, // maxium height
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/default_bg.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              height: 600,
              width: double.maxFinite - 100,
              margin: const EdgeInsets.only(left: 40, right: 40),
              // color: Colors.grey,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    margin: EdgeInsets.only(bottom: 124),
                    decoration: BoxDecoration(
                      // in container if you want to show a background image you need box decoration
                      image: DecorationImage(
                          image: AssetImage('assets/main/unlockgames_180.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffFEEFA8), Color(0xffF3A477)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(23.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: SizedBox(
                        width: double.maxFinite, // <-- Your width
                        height: 55,
                        child: ElevatedButton(
                          child: const Text(
                            'Get Started',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => RegisterPage(),
                            //   ),
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(23.0),
                        border: Border.all(
                          color: Color(0xffD38200),
                        ),
                      ),
                      child: SizedBox(
                        width: double.maxFinite, // <-- Your width
                        height: 55,
                        child: ElevatedButton(
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => RegisterPage(),
                            //   ),
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
