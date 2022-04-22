import 'package:flutter/material.dart';

class RedeemReward extends StatefulWidget {
  @override
  _RedeemRewardState createState() => _RedeemRewardState();
}

class _RedeemRewardState extends State<RedeemReward> {
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
          ),
        ),
      ),
    );
  }
}
