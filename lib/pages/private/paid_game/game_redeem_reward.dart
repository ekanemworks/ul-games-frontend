import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/wallet_screen.dart';
import 'package:trivial_game/pages/private/dashboard.dart';
import 'package:trivial_game/pages/private/dashboard_body.dart';

class RedeemReward extends StatefulWidget {
  @override
  _RedeemRewardState createState() => _RedeemRewardState();
}

class _RedeemRewardState extends State<RedeemReward> {
  bool _selectReward = false;
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
            title: Text(''),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  // color: Colors.pink,

                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff02264B),
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: Color(0xffB6D5F7),
                      width: 4,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 78.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                          'Win: N 2,000 ',
                          style: TextStyle(color: Colors.grey),
                        )),
                        SizedBox(height: 20),
                        Text(
                          'Choose the Nature of Reward',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    _selectReward = true;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    Text('Cash')
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    _selectReward = true;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone_android,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    Text('Airtime')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        _selectReward == true
                            ? Container(
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                padding: EdgeInsets.all(30),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Text(
                                  'Cash Balance: ₦202,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            : Container(),
                        SizedBox(height: 20),
                        _selectReward == true
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff184676),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                child: SizedBox(
                                  height: 50,
                                  width: double.maxFinite,
                                  child: ElevatedButton(
                                    child: const Text(
                                      'Return To Home',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DashboardPage(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
