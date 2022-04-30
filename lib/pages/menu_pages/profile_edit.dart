import 'package:flutter/material.dart';
import 'package:trivial_game/pages/custom_layout/menu_icon.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final GlobalKey<FormState> _editFormKey = GlobalKey<FormState>();

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
                'Profile',
              ),
            ),
            actions: [
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffEE5E04), Color(0xff813404)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xffE7510E),
                  ),
                ),
                child: SizedBox(
                  width: double.maxFinite, // <-- Your width
                  height: 30,
                  child: ElevatedButton(
                    child: const Text(
                      'Save All',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              height: 600,
              width: double.maxFinite - 100,
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    // color: Colors.purple,
                    // child: Image.asset('assets/default.png'),

                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image.asset(
                            'assets/main/titleLogo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          right: 5.0,
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.camera_alt,
                                color: Colors.white, size: 15),
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.deepPurple,
                    // width: 100,
                    // margin: const EdgeInsets.only(left: 40, right: 40),
                    height: 400,
                    child: Form(
                      key: _editFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextFormField(
                              // initialValue: _profileName,
                              decoration: const InputDecoration(
                                  labelText: 'Profile Name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Profile name cannot be empty';
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
                              decoration:
                                  const InputDecoration(labelText: 'Email'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'username cannot be empty';
                                }
                              },
                              onSaved: (value) {
                                // _profileUsername = value!;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: TextFormField(
                              // initialValue: _profileUsername,
                              decoration: const InputDecoration(
                                labelText: 'Phone Number',
                                prefix: Text('+234'),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'username cannot be empty';
                                }
                              },
                              onSaved: (value) {
                                // _profileUsername = value!;
                              },
                            ),
                          ),

                          const SizedBox(height: 20),

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
