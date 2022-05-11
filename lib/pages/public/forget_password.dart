import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/login_page.dart';
import 'package:trivial_game/pages/public/otp.dart';

class ForgetpasswordPage extends StatefulWidget {
  @override
  _ForgetpasswordPageState createState() => _ForgetpasswordPageState();
}

class _ForgetpasswordPageState extends State<ForgetpasswordPage> {
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
              image: AssetImage('assets/landing_img/default_bg3.png'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 60,
                width: 80,
                decoration: const BoxDecoration(
                  // in container if you want to show a background image you need box decoration
                  image: DecorationImage(
                      image: AssetImage('assets/main/titleLogo.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 29),
                      child: Text(
                        'Safely recover your password',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: 450,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.only(right: 25, left: 25),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(bottom: 29),
                              child: Text(
                                'Enter your phone number to reset',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // phone number
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 23, bottom: 15),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Phone Number ',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefix: Text('+234'),
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
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffEE5E04),
                                    Color(0xff813404)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(23.0),
                              ),
                              child: SizedBox(
                                width: double.maxFinite, // <-- Your width
                                height: 55,
                                child: ElevatedButton(
                                  child: const Text(
                                    'Reset',
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
