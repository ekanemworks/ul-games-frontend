import 'package:flutter/material.dart';
import 'package:trivial_game/pages/custom_layout/menu_icon.dart';
import 'package:trivial_game/pages/menu_pages/wallet/fund_wallet.dart';
import 'package:trivial_game/pages/menu_pages/wallet/withdraw_funds.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
                'Wallet',
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                // CARD HEAD
                // CARD HEAD
                Container(
                  width: double.maxFinite,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xff216DBD),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello Steve,',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        SizedBox(height: 20),
                        const Text(
                          'Cash Balance',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        const Text(
                          '₦ 200,700',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),

                // CARD BOTTOM
                // CARD BOTTOM
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color(0xff134C87),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Airtime',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            const Text(
                              '₦ 2,700',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Points',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            const Text(
                              '700',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // END OF CARD
                // END OF CARD

                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          // width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff216DBD),
                            borderRadius: BorderRadius.circular(23.0),
                            border: Border.all(
                              color: Color(0xff216DBD),
                            ),
                          ),
                          child: SizedBox(
                            width: double.maxFinite, // <-- Your width
                            height: 50,
                            child: ElevatedButton(
                              child: const Text(
                                'Fund Wallet',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FundWallet(),
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
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          child: SizedBox(
                            width: double.maxFinite, // <-- Your width
                            height: 50,
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'Withdraw',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_right_alt,
                                      color: Colors.black)
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WithdrawFunds(),
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
                      ),
                    ],
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
