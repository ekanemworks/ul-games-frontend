import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/dashboard.dart';
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
              image: AssetImage('assets/landing_/backgroundimg.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            height: 640,
            // constraints: BoxConstraints(
            //     maxWidth: MediaQuery.of(context).size.width - 45,
            //     maxHeight: 640,),
            // max
            width: MediaQuery.of(context).size.width - 45,
            // margin: const EdgeInsets.only(left: 40, right: 40),
            // color: Colors.grey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffE7510E)),
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
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    height: 460,
                    padding: EdgeInsets.only(right: 25, left: 25),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // first name

                          // phone number
                          Padding(
                            padding: const EdgeInsets.only(top: 23),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Phone Number ',
                                prefix: Text('+234'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14.0),
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
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(14.0),
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
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    child: Text('Forgot Password?'),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.maxFinite, // <-- Your width
                            height: 55,
                            child: ElevatedButton(
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 18),
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
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account ?'),
                      TextButton(
                        child: Text('Register'),
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
      )),
    );
  }
}
