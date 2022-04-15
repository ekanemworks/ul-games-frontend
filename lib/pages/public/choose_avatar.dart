import 'package:flutter/material.dart';

class ChooseAvatar extends StatefulWidget {
  @override
  _ChooseAvatarState createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
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
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                height: 820,
                alignment: Alignment.center,
                // color: Colors.grey,
                // constraints: BoxConstraints(
                //     maxWidth: MediaQuery.of(context).size.width - 45,
                //     maxHeight: 640,),
                // max
                width: MediaQuery.of(context).size.width - 45,
                // margin: const EdgeInsets.only(left: 40, right: 40),
                // color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
