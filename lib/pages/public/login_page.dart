import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/dashboard.dart';
import 'package:trivial_game/pages/public/forget_password.dart';
import 'package:trivial_game/pages/public/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _phoneNumber;
  late String _password;
  bool _passwordVisibility = false;

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
                        'Login',
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
                        'Securely login to your account',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    //  decoration: BoxDecoration(
                    //               gradient: LinearGradient(
                    //                   colors: [Colors.pink, Colors.green],
                    //                   begin: Alignment.topCenter,
                    //                   end: Alignment.bottomCenter,
                    //                 ),
                    //               color: Colors.black,
                    //               borderRadius: BorderRadius.circular(20.0),
                    //             ),
                    Container(
                      // color: Colors.red,
                      height: 450,
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //   colors: [Color(0xffFEEFA8), Color(0xffF3A477)],
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        // ),

                        color: Color(0xffEFB996),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.only(right: 25, left: 25),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // phone number
                            Padding(
                              padding: const EdgeInsets.only(top: 23),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Phone Number ',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefix: Text('+234'),
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
                                  _phoneNumber = value!;
                                },
                              ),
                            ),

                            // confirm password
                            Padding(
                              padding: const EdgeInsets.only(top: 23),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(23.0),
                                    ),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: _passwordVisibility == false
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisibility =
                                            !_passwordVisibility;
                                      });
                                    },
                                  ),
                                ),
                                obscureText: !_passwordVisibility,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter password';
                                  }
                                },
                                onSaved: (value) {
                                  _password = value!;
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ForgetpasswordPage(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [],
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
                                    'Log In',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  onPressed: () {
                                    // if (!_formKey.currentState!.validate()) {
                                    //   return;
                                    // }
                                    // _formKey.currentState!.save();

                                    // // print(_age);
                                    // // print(myInitialItem);

                                    // var loginmapdata = {
                                    //   'phonenumber': _phoneNumber,
                                    //   'password': _password,
                                    // };

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardPage(),
                                      ),
                                    );
                                  },
                                  // style: ButtonStyle(
                                  //   shape: MaterialStateProperty.all<
                                  //       RoundedRectangleBorder>(
                                  //     RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(20.0),
                                  //     ),
                                  //   ),
                                  // ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      shadowColor: Colors.transparent),
                                ),
                              ),
                            ),

                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Are you new here ?'),
                          TextButton(
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                  color: Color(0xffBC4A01),
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              );
                            },
                          )
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
