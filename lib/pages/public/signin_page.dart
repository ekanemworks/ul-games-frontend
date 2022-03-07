import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/register_page.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _phoneNumber;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              );
            },
            icon: Icon(Icons.login),
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 40, right: 40),
          height: 300,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Phone Number ', prefix: Text('+234')),
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
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Security password'),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter password';
                    }
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 180, // <-- Your width
                  height: 45,
                  child: ElevatedButton(
                    child: const Text('Next'),
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();

                      // print(_age);
                      // print(myInitialItem);

                      var loginmapdata = {
                        'phonenumber': _phoneNumber,
                        'password': _password,
                      };

                      // print(loginmapdata);

                      // httpService
                      //     .loginAPIfunction(loginmapdata)
                      //     .then((value) async => {
                      //           print(value),
                      //           if (value['status'] == 'ok')
                      //             {

                      //               // use session management class to set session
                      //               // use session management class to set session
                      //               // sessionMgt.setSession({
                      //               //   'id': value['body']['id'],
                      //               //   'session': value['body']['session'],
                      //               //   'fullname': value['body']['fullname'],
                      //               //   'username': value['body']['username'],
                      //               //   'bio': value['body']['bio'],
                      //               //   'status_count': '0',
                      //               //   'friends_count': json
                      //               //       .decode(value['body']
                      //               //           ['friends_with_array'])
                      //               //       .length
                      //               //       .toString(),
                      //               //   'profilephoto': value['body']
                      //               //       ['profilephoto'],
                      //               //   'relationshipStatus': '',
                      //               //   'interests': json
                      //               //       .decode(value['body']['interests']),
                      //               //   'hide_profile': value['body']
                      //               //       ['hide_profile'],
                      //               // }),

                      //               // push to new page
                      //               // Navigator.push(
                      //               //   context,
                      //               //   MaterialPageRoute(
                      //               //     builder: (context) => const MembersView(
                      //               //       title: 'Baybn',
                      //               //     ),
                      //               //   ),
                      //               // )
                      //             }
                      //           else
                      //             {_showToast(context, value['message'])}
                      //         });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ForgotPassword1(),
                      //   ),
                      // );
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context, message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
            label: 'Close', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
    print(context);
  }
}
