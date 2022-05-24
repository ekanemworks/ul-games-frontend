import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/shop/order_history.dart';
import 'package:trivial_game/pages/menu_pages/shop/shop_home.dart';
import 'package:trivial_game/pages/private/dashboard.dart';

class OrderConfirmation extends StatefulWidget {
  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor: Colors.white,
      ),
      home: Scaffold(
        body: Container(
          width: double.maxFinite, // maximum width
          height: double.maxFinite, // maxium height
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/default_bg3.png'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.all(20),
              child: Center(
                child: Container(
                  // color: Colors.red,
                  width: 350,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Color(0xff021B34),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image.asset(
                            'assets/orderconfirmation.png',
                            fit: BoxFit.cover,
                            height: 120.0,
                            width: 120.0,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Thank you, Your order has been placed.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Check Order History for status',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 50),
                      // start of button
                      // start of button
                      Container(
                        height: 44,
                        width: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(0xff184676),
                              Color(0xff184676)
                            ],
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Back to Home',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
                      ),
                      SizedBox(height: 30),
                      // OutlinedButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => ShopHome(),
                      //       ),
                      //     );
                      //   },
                      //   child: Text('Back To Shop'),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
