import 'package:flutter/material.dart';

class FundWallet extends StatefulWidget {
  @override
  _FundWalletState createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite, // maximum width
        height: double.maxFinite, // maxium height
        decoration: const BoxDecoration(
          // in container if you want to show a background image you need box decoration
          image: DecorationImage(
              image: AssetImage('assets/landing_img/default_bg2.png'),
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
                'Fund Wallet',
              ),
            ),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Container(
                // color: Colors.red,
                width: double.maxFinite,
                height: 490,
                decoration: BoxDecoration(
                  color: Color(0xff021B34),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: double.maxFinite,
                      child: Text('Select Funding method',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),

                    // start of button
                    // start of button
                    Container(
                      height: 60,
                      // width: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Color(0xff184676), Color(0xff184676)],
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Color(0xff184676),
                        ),
                      ),
                      child: SizedBox(
                        width: double.maxFinite, // <-- Your width
                        height: 44,
                        child: ElevatedButton(
                          child: const Text(
                            'Flutterwave',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    // End of button
                    // End of button

                    // start of button
                    // start of button
                    Container(
                      height: 60,
                      // width: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Color(0xff184676), Color(0xff184676)],
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Color(0xff184676),
                        ),
                      ),
                      child: SizedBox(
                        width: double.maxFinite, // <-- Your width
                        height: 44,
                        child: ElevatedButton(
                          child: const Text(
                            'Interswitch',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    // End of button
                    // End of button

                    // start of button
                    // start of button
                    Container(
                      height: 60,
                      // width: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Color(0xff184676), Color(0xff184676)],
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Color(0xff184676),
                        ),
                      ),
                      child: SizedBox(
                        width: double.maxFinite, // <-- Your width
                        height: 44,
                        child: ElevatedButton(
                          child: const Text(
                            'PayStack',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    // End of button
                    // End of button
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
