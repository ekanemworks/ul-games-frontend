import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/shop/shop_checkout_summary.dart';

class ShopCheckOut extends StatefulWidget {
  @override
  _ShopCheckOutState createState() => _ShopCheckOutState();
}

class _ShopCheckOutState extends State<ShopCheckOut> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Check Out',
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Container(
              // color: Colors.red,
              height: 450,
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [Color(0xffFEEFA8), Color(0xffF3A477)],
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),

                // color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.only(right: 25, left: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Address ',
                          border: OutlineInputBorder(),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Phone Number';
                          }

                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return 'Please enter a valid phone number';
                          }
                        },
                        onSaved: (value) {
                          // _phoneNumber = value!;
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
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
                          borderRadius: BorderRadius.circular(23.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: SizedBox(
                          width: double.maxFinite, // <-- Your width
                          height: 55,
                          child: ElevatedButton(
                            child: const Text(
                              'Next',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShopCheckoutSummary(),
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
                    const SizedBox(height: 40),
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
