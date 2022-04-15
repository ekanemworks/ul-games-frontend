import 'package:flutter/material.dart';

class OtpConfirmation extends StatefulWidget {
  @override
  _OtpConfirmationState createState() => _OtpConfirmationState();
}

class _OtpConfirmationState extends State<OtpConfirmation> {
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
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                height: 820,
                alignment: Alignment.center,
                // color: Colors.grey,
                // constraints: BoxConstraints(
                //     maxWidth: MediaQuery.of(context).size.width - 45,
                //     maxHeight: 640,),
                // max
                width: MediaQuery.of(context).size.width - 45,
                // margin: const EdgeInsets.only(left: 40, right: 40),
                // color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 29),
                      child: Text(
                        'Safely recover your password',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: 450,
                      decoration: BoxDecoration(
                        color: Color(0xffEFB996),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.only(right: 25, left: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password was changed succesfully',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password was changed succesfully',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // phone number

                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff394A5F),
                              borderRadius: BorderRadius.circular(23.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: SizedBox(
                              width: double.maxFinite, // <-- Your width
                              height: 55,
                              child: ElevatedButton(
                                child: const Text(
                                  'Done',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              child: Container(
                                width: 100,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Back',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
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
        ),
      ),
    );
  }
}
