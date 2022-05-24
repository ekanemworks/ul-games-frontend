import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/shop/order_confirmation.dart';

class ShopCheckoutSummary extends StatefulWidget {
  Map deliveryData;
  ShopCheckoutSummary({Key? key, required this.deliveryData}) : super(key: key);

  @override
  _ShopCheckoutSummaryState createState() => _ShopCheckoutSummaryState();
}

class _ShopCheckoutSummaryState extends State<ShopCheckoutSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'CheckOut Summary',
              ),
            ),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Container(
                // color: Colors.red,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xff021B34),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub Total'),
                        Text('20,500 points'),
                      ],
                    ),
                    SizedBox(height: 5),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery charges'),
                        Text('500 points'),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(color: Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '21,000 points',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: double.maxFinite,
                            child: Text(
                              'Destination',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Text(
                              'Address',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: double.maxFinite,
                            child: Text(
                              widget.deliveryData['address'],
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.maxFinite,
                            child: Text(
                              'City',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: double.maxFinite,
                            child: Text(
                              '' + widget.deliveryData['city'],
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.maxFinite,
                            child: Text(
                              'state',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: double.maxFinite,
                            child: Text(
                              widget.deliveryData['state'],
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.maxFinite,
                            child: Text(
                              'Alternative Phone Number',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: double.maxFinite,
                            child: Text(
                              widget.deliveryData['phone'],
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // start of button
                    // start of button
                    Container(
                      height: 44,
                      width: 150,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Check Out',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.payment)
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderConfirmation(),
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
