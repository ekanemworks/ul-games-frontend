import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
              image: AssetImage('assets/landing_img/img2.png'),
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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Enter the OTP sent to your device',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // phone number
                            Padding(
                              padding: const EdgeInsets.only(top: 23),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'OTP',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(23.0),
                                    ),
                                  ),
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
                                    'Confirm',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Otp(),
                                      ),
                                    );
                                  },
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
