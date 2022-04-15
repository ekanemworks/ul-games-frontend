import 'package:flutter/material.dart';

class StakeAmount extends StatefulWidget {
  @override
  _StakeAmountState createState() => _StakeAmountState();
}

class _StakeAmountState extends State<StakeAmount> {
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
          child: SingleChildScrollView()),
    );
  }
}
