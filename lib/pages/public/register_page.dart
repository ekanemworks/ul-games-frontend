import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/dashboard.dart';
import 'package:trivial_game/pages/public/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _phoneNumber;
  late String _password;
  bool _passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
          body: Container(
        width: double.maxFinite, // maximum width
        height: double.maxFinite, // maxium height
        decoration: const BoxDecoration(
          // in container if you want to show a background image you need box decoration
          image: DecorationImage(
              image: AssetImage('assets/landing_img/img2.png'),
              fit: BoxFit.cover),
        ),
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
                    'Create an Account',
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
                    'Fill in the details to create an account',
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
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffFEEFA8), Color(0xffF3A477)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.only(right: 25, left: 25),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // Full name
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Full Name ',
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
                              _phoneNumber = value!;
                            },
                          ),
                        ),

                        // Email
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email ',
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
                              _phoneNumber = value!;
                            },
                          ),
                        ),

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
                                    _passwordVisibility = !_passwordVisibility;
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

                        // confirm password
                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
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
                                    _passwordVisibility = !_passwordVisibility;
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

                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFDAF02),
                              borderRadius: BorderRadius.circular(23.0),
                              border: Border.all(color: Colors.black)),
                          child: SizedBox(
                            width: double.maxFinite, // <-- Your width
                            height: 55,
                            child: ElevatedButton(
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
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
                      Text('Already have an account ?'),
                      TextButton(
                        child: Text('Log In'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
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
      )

          // Center(
          //   child: Container(
          //     margin: const EdgeInsets.only(left: 40, right: 40),
          //     height: 400,
          //     child: Form(
          //       key: _formKey,
          //       child: Column(
          //         children: [
          //           TextFormField(
          //             decoration: const InputDecoration(labelText: 'First Name '),
          //             validator: (value) {
          //               if (value!.isEmpty) {
          //                 return 'Enter Phone Number';
          //               }

          //               if (!RegExp(
          //                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          //                   .hasMatch(value)) {
          //                 return 'Please enter a valid phone number';
          //               }
          //             },
          //             onSaved: (value) {
          //               _phoneNumber = value!;
          //             },
          //           ),
          //           TextFormField(
          //             decoration: const InputDecoration(labelText: 'Last Name '),
          //             validator: (value) {
          //               if (value!.isEmpty) {
          //                 return 'Enter Phone Number';
          //               }

          //               if (!RegExp(
          //                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          //                   .hasMatch(value)) {
          //                 return 'Please enter a valid phone number';
          //               }
          //             },
          //             onSaved: (value) {
          //               _phoneNumber = value!;
          //             },
          //           ),
          //           TextFormField(
          //             decoration: const InputDecoration(
          //                 labelText: 'Phone Number ', prefix: Text('+234')),
          //             validator: (value) {
          //               if (value!.isEmpty) {
          //                 return 'Enter Phone Number';
          //               }

          //               if (!RegExp(
          //                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          //                   .hasMatch(value)) {
          //                 return 'Please enter a valid phone number';
          //               }
          //             },
          //             onSaved: (value) {
          //               _phoneNumber = value!;
          //             },
          //           ),
          //           TextFormField(
          //             decoration:
          //                 const InputDecoration(labelText: 'Create a password'),
          //             obscureText: true,
          //             validator: (value) {
          //               if (value!.isEmpty) {
          //                 return 'Enter password';
          //               }
          //             },
          //             onSaved: (value) {
          //               _password = value!;
          //             },
          //           ),
          //           const SizedBox(height: 20),
          //           SizedBox(
          //             width: 180, // <-- Your width
          //             height: 45,
          //             child: ElevatedButton(
          //               child: const Text('Create'),
          //               onPressed: () {
          //                 if (!_formKey.currentState!.validate()) {
          //                   return;
          //                 }
          //                 _formKey.currentState!.save();

          //                 // print(_age);
          //                 // print(myInitialItem);

          //                 var loginmapdata = {
          //                   'phonenumber': _phoneNumber,
          //                   'password': _password,
          //                 };

          //
          //               },
          //               style: ButtonStyle(
          //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //                   RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(20.0),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             padding: EdgeInsets.only(top: 25),
          //             alignment: Alignment.center,
          //             child: TextButton(
          //               onPressed: () {
          //                 // Navigator.push(
          //                 //   context,
          //                 //   MaterialPageRoute(
          //                 //     builder: (context) => ForgotPassword1(),
          //                 //   ),
          //                 // );
          //               },
          //               child: const Text(
          //                 'Forgot password?',
          //                 style: TextStyle(decoration: TextDecoration.underline),
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
