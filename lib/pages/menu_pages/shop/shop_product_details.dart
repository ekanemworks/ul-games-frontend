import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/shop/shop_cart.dart';

class ShopProductDetails extends StatefulWidget {
  @override
  _ShopProductDetailsState createState() => _ShopProductDetailsState();
}

class _ShopProductDetailsState extends State<ShopProductDetails> {
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
                'Product Details',
              ),
            ),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // PRODUCT image
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: MediaQuery.of(context).size.width - 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23.0),
                            color: Color(0xff216DBD),
                            image: DecorationImage(
                                image: AssetImage('assets/food1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 10),
                        child: Text(
                          'Domino Pizza',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 20),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Product code: ',
                                  style: TextStyle(color: Colors.grey)),
                              TextSpan(
                                  text: 'AHA12345',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 20),
                            children: <TextSpan>[
                              TextSpan(text: 'Price: '),
                              TextSpan(text: '300 points'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
                    // alignment: Alignment.centerLeft,
                    child: Container(
                      // padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        height: 50,
                        // width: ,
                        decoration: BoxDecoration(
                          color: Color(0xff184676),
                          borderRadius: BorderRadius.circular(7.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: SizedBox(
                          width: double.maxFinite, // <-- Your width
                          height: 55,
                          child: ElevatedButton(
                            child: const Text(
                              'Add To Cart',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShopCart(),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
