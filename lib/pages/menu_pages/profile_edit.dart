import 'package:flutter/material.dart';
import 'package:trivial_game/pages/custom_layout/menu_icon.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite, // maximum width
        height: double.maxFinite, // maxium height
        decoration: const BoxDecoration(
          // in container if you want to show a background image you need box decoration
          image: DecorationImage(
              image: AssetImage('assets/landing_img/default_bg.png'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Profile',
              ),
            ),
            actions: [
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffEE5E04), Color(0xff813404)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xffE7510E),
                  ),
                ),
                child: SizedBox(
                  width: double.maxFinite, // <-- Your width
                  height: 30,
                  child: ElevatedButton(
                    child: const Text(
                      'Save All',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onPressed: () {},
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
    );
  }
}
