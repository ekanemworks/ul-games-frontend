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
                image: AssetImage('assets/landing_/backgroundimg.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              height: 300,
              width: double.maxFinite - 100,
              margin: const EdgeInsets.only(left: 40, right: 40),
              // color: Colors.red,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 60,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffE7510E)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: const Text('Get Started'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 60,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          // backgroundColor:
                          //     MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: const Text('Log In'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
