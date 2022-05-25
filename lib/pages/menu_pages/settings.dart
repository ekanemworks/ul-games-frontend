import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<FormState> _settingsFormKey = GlobalKey<FormState>();

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
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Profile',
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: 600,
              width: double.maxFinite - 100,
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  Container(
                    // color: Colors.deepPurple,
                    // width: 100,
                    // margin: const EdgeInsets.only(left: 40, right: 40),
                    height: 400,
                    child: Form(
                      key: _settingsFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextFormField(
                              // initialValue: _profileName,
                              decoration: const InputDecoration(
                                  labelText: 'Current password'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter value';
                                }
                              },
                              onSaved: (value) {
                                // _profileName = value!;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextFormField(
                              // initialValue: _profileUsername,
                              decoration: const InputDecoration(
                                  labelText: 'New password'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'required';
                                }
                              },
                              onSaved: (value) {
                                // _profileUsername = value!;
                              },
                            ),
                          ),

                          const SizedBox(height: 20),
                          // start of button
                          // start of button
                          Container(
                            height: 44,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xff184676),
                                  Color(0xff184676)
                                ],
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(
                                color: Color(0xff184676),
                              ),
                            ),
                            child: SizedBox(
                              width: double.maxFinite, // <-- Your width
                              height: 44,
                              child: ElevatedButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Update',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if (!_settingsFormKey.currentState!
                                      .validate()) {
                                    return;
                                  }
                                  _settingsFormKey.currentState!.save();

                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => ShopCheckoutSummary(
                                  //         deliveryData: deliveryData),
                                  //   ),
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),

                          // Text(mapdata.toString()),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
