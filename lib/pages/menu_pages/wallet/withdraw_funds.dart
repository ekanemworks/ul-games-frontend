import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/dashboard.dart';

class WithdrawFunds extends StatefulWidget {
  @override
  _WithdrawFundsState createState() => _WithdrawFundsState();
}

class _WithdrawFundsState extends State<WithdrawFunds> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _cashbalance = 12000;
  String _accountNumber = '';
  int _amount = 0;
  String _banksAvailable = 'Select Bank';
  bool transactionCompleted = false;
  List _banksAvailableList = [
    'Select Bank',
    '',
    'GT Bank',
    'First Bank',
    'United Bank for Africa',
    'Eco Bank',
    'Zenith'
  ];

  // START OF Confirm withdrawal DIALOG
  // START OF Confirm withdrawal DIALOG
  openWithdrawConfirmationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff216DBD), Color(0xff216DBD)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            height: 510,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, bottom: 20, left: 10),
                  // color: Colors.green,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: 430,
                  // color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff428EDD), Color(0xff216DBC)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xffB5D4F6),
                          ),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cash Balance',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            Text(
                              '₦ ' +
                                  _cashbalance.toString().replaceAllMapped(
                                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                      (Match m) => '${m[1]},'),
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(child: Text('Amount To Withdraw:')),
                      Container(
                        child: Text(
                          '₦' +
                              _amount.toString().replaceAllMapped(
                                  RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]},'),
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff184676),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            child: const Text(
                              'Withdraw',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pop(context); // Close old

                              setState(() {
                                _cashbalance = _cashbalance - _amount;
                              });
                              openWithdrawSuccessDialog(context); // open new
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  // END OF Confirm withdrawal DIALOG
  // END OF Confirm withdrawal DIALOG

  // START OF withdrawal success DIALOG
  // START OF withdrawal success DIALOG
  openWithdrawSuccessDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff216DBD), Color(0xff216DBD)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            height: 510,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, bottom: 20, left: 10),
                  // color: Colors.green,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: 430,
                  // color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff428EDD), Color(0xff216DBC)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xffB5D4F6),
                          ),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cash Balance',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            Text(
                              '₦ ' +
                                  _cashbalance.toString().replaceAllMapped(
                                      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                      (Match m) => '${m[1]},'),
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                          child: Text(
                              'Withdrawal Successful! Transaction is being processed')),
                      SizedBox(
                        height: 90,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff184676),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            child: const Text(
                              'Okay',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
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
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  // END OF withdrawal success DIALOG
  // END OF withdrawal success DIALOG

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite, // maximum width
        height: double.maxFinite, // maxium height
        decoration: const BoxDecoration(
          // in container if you want to show a background image you need box decoration
          image: DecorationImage(
              image: AssetImage('assets/landing_img/default_bg2.png'),
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
                'Withdraw',
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
                        child: Text('Enter account details',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextFormField(
                          // initialValue: _edit_fullname,

                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          maxLength: 10,
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
                            labelText: 'Account Number',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Account No cannot be empty';
                            }
                          },
                          onSaved: (value) {
                            _accountNumber = value!;
                          },
                        ),
                      ),

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
                                  value: _banksAvailable,
                                  isExpanded: true,
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      _banksAvailable = value!;
                                    });
                                  },
                                  items: _banksAvailableList.map((items) {
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
                      SizedBox(height: 20),

                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextFormField(
                          // initialValue: _edit_fullname,

                          maxLength: 7,
                          decoration: const InputDecoration(
                            labelText: 'Amount',
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
                              return 'Enter Amount';
                            }
                            if (int.parse(value) > _cashbalance) {
                              return 'Insufficient Funds: Amount is more than balance';
                            }
                          },
                          onSaved: (value) {
                            _amount = int.parse(value!);
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
                                'accountNumber': _accountNumber,
                                'bank': _banksAvailable,
                                'amount': _amount
                              };

                              openWithdrawConfirmationDialog(context);
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
