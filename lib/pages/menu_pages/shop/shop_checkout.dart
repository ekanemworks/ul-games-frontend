import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/shop/shop_checkout_summary.dart';

class ShopCheckOut extends StatefulWidget {
  @override
  _ShopCheckOutState createState() => _ShopCheckOutState();
}

class _ShopCheckOutState extends State<ShopCheckOut> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _address = '';
  String _altphone = '';
  String _deliveryCity = 'Select States';
  List _deliveryCityList = ['Select States', '', 'Abia'];

  String _deliveryState = 'Select States';
  List _deliveryStateList = ['Select States', '', 'Abia'];

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
                'Check Out',
              ),
            ),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Container(
                // color: Colors.red,
                height: 490,
                decoration: BoxDecoration(
                  color: Color(0xff021B34),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: double.maxFinite,
                        child: Text('Enter delivery destination',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      // START: ADDRESS
                      // START: ADDRESS
                      // START: ADDRESS
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextFormField(
                          // initialValue: _edit_fullname,

                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          minLines: 2,
                          maxLines: 3,
                          maxLength: 50,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            labelText: 'Address',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Caption cannot be empty';
                            }
                          },
                          onSaved: (value) {
                            _address = value!;
                          },
                        ),
                      ),
                      // END: ADDRESS
                      // END: ADDRESS
                      // END: ADDRESS

                      // START: STATE AND REGION DROPDOWN
                      // START: STATE AND REGION DROPDOWN
                      // START: STATE AND REGION DROPDOWN
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 7, bottom: 4, left: 10, right: 10),
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  icon: Icon(Icons.arrow_circle_down_outlined),
                                  value: _deliveryCity,
                                  isExpanded: true,
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      _deliveryCity = value!;
                                    });
                                  },
                                  items: _deliveryCityList.map((items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 7, bottom: 4, left: 10, right: 10),
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  icon: Icon(Icons.arrow_circle_down_outlined),
                                  value: _deliveryState,
                                  isExpanded: true,
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      _deliveryState = value!;
                                    });
                                  },
                                  items: _deliveryStateList.map((items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // END: STATE AND REGION DROPDOWN
                      // END: STATE AND REGION DROPDOWN
                      // END: STATE AND REGION DROPDOWN
                      SizedBox(height: 20),
                      // START: Alternative phone number
                      // START: Alternative phone number
                      // START: Alternative phone number
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextFormField(
                          // initialValue: _edit_fullname,

                          maxLength: 50,
                          decoration: const InputDecoration(
                            labelText: 'Alternative Phone number',
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Phone number';
                            }
                          },
                          onSaved: (value) {
                            _altphone = value!;
                          },
                        ),
                      ),
                      // END: Alternative phone number
                      // END: Alternative phone number
                      // END: Alternative phone number

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
                                  'Next',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_right_alt)
                              ],
                            ),
                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();

                              Map deliveryData = {
                                'address': _address,
                                'city': _deliveryCity,
                                'state': _deliveryState,
                                'phone': _altphone
                              };

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShopCheckoutSummary(
                                      deliveryData: deliveryData),
                                ),
                              );
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
