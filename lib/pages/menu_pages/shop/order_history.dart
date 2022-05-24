import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  List _chartItems = [
    {
      'gradientTop': Color(0xffBC4A01),
      'status': 'delivered',
    },
    {
      'gradientTop': Color(0xffBC4A01),
      'status': 'delivered',
    },
    {
      'gradientTop': Color(0xffBC4A01),
      'status': 'pending',
    },
  ];

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
                'Order History',
              ),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView(
                      children: _chartItems.map((e) {
                        return Container(
                          child: Padding(
                            padding: EdgeInsets.all(9),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(23.0),
                                    ),
                                    height: 100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 90,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          23.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/food1.jpeg'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      'Sweet Pancakes',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      'Price: 120 Points',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        e['status'] == 'pending'
                                            ? Text(
                                                'Pending ',
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : Text(
                                                'Delivered ',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
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
