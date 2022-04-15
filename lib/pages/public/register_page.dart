import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/dashboard.dart';
import 'package:trivial_game/pages/public/login_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _phoneNumber;
  late String _password;
  bool _passwordVisibility = false;
  bool showvalue = false;

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
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                // height: 820,

                alignment: Alignment.center,

                width: MediaQuery.of(context).size.width - 45,
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
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 29),
                      child: Text(
                        'Fill in the details to create an account',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.only(right: 25, left: 25),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Full name
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Full Name ',
                                  fillColor: Colors.white,
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
                                  _phoneNumber = value!;
                                },
                              ),
                            ),

                            // Email
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Email ',
                                  fillColor: Colors.white,
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
                                  _phoneNumber = value!;
                                },
                              ),
                            ),

                            // phone number
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
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
                                  _phoneNumber = value!;
                                },
                              ),
                            ),

                            // confirm password
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Set Password',
                                  fillColor: Colors.white,
                                  filled: true,
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

                            // confirm password
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  fillColor: Colors.white,
                                  filled: true,
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

                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 30),
                              child: Container(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: this.showvalue,
                                      onChanged: (value) {
                                        setState(() {
                                          this.showvalue = value!;
                                        });
                                      },
                                    ),
                                    Text('I have read and accepted the terms')
                                  ],
                                ),
                              ),
                            ),

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
                                // border: Border.all(color: Colors.black),
                              ),
                              child: SizedBox(
                                width: double.maxFinite, // <-- Your width
                                height: 55,
                                child: ElevatedButton(
                                  child: const Text(
                                    'Create Account',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
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
                          Text('Already have an account ?',
                              style: TextStyle(color: Colors.white)),
                          TextButton(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  color: Color(0xffBC4A01),
                                  fontWeight: FontWeight.bold),
                            ),
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
          ),
        ),
      ),
    );
  }
}
