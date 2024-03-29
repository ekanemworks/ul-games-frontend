import 'package:flutter/material.dart';
import 'package:trivial_game/pages/custom_layout/menu_icon.dart';
import 'package:trivial_game/pages/private/paid_game/game_trigger_countdown.dart';

class Category extends StatefulWidget {
  String category;
  String contentPhoto;
  String text;

  Category(
      {Key? key,
      required this.category,
      required this.contentPhoto,
      required this.text})
      : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  String myInitialHolder = 'Select Play Amount';
  double _potentialWin = 0.0;
  double _stakeMultiple = 1.2;
  RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  String Function(Match) mathFunc = (Match match) => '${match[1]},';

  final List myItems = [
    'Select Play Amount',
    '350',
    '500',
    '750',
    '1000',
    '10000',
  ]; // List of items to show in dropdownlist

  // START OF STAKE DIALOG
  // START OF STAKE DIALOG
  openStakeDialog(BuildContext context) {
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
                              '₦ 12,000',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
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
                            color: Color(0xffEFB996),
                          ),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Coins',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            Text(
                              '550',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 6, bottom: 6, left: 20, right: 20),
                        margin: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black54),
                          // color: Colors.black87,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: myInitialHolder,
                            isExpanded: true,
                            onChanged: (dynamic value) {
                              setState(() {
                                myInitialHolder = value!;
                                if (myInitialHolder != 'Select Play Amount') {
                                  _potentialWin =
                                      double.parse(myInitialHolder) *
                                          _stakeMultiple;
                                } else {
                                  _potentialWin = 0.0;
                                }
                              });

                              // Close dialog and open again: to reflect change
                              // Close dialog and open again: to reflect change
                              Navigator.pop(context); // Close
                              openStakeDialog(context); // Open
                            },
                            items: myItems.map((items) {
                              return DropdownMenuItem(
                                value: items,
                                child: items == 'Select Play Amount'
                                    ? Text(items)
                                    : Text("₦ " +
                                        items.replaceAllMapped(
                                            RegExp(
                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                            (Match m) => '${m[1]},')),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      _potentialWin == 0.0
                          ? Container()
                          : Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                'Potential Win:  ₦' +
                                    _potentialWin.toString().replaceAllMapped(
                                        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                        (Match m) => '${m[1]},'),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                      SizedBox(
                        height: 20,
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
                              'Next',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              // CONDITION TO CHECK IF AMOUNT HAS BEEN ENTERED
                              if (_potentialWin == 0.0) {
                              } else {
                                Navigator.pop(context); // Close old
                                openStakeSummaryDialog(context); // open new
                              }
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
  // END OF STAKE DIALOG
  // END OF STAKE DIALOG

  // START OF STAKE SUMMARY
  // START OF STAKE SUMMARY
  openStakeSummaryDialog(BuildContext context) {
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
            height: 480,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  // color: Colors.green,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          openStakeDialog(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 380,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'LifeLine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 80,
                              decoration: const BoxDecoration(
                                // in container if you want to show a background image you need box decoration
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/lifeline/lifeline1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'This lifeline removes two incorrect answers from the options.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 80,
                              decoration: const BoxDecoration(
                                // in container if you want to show a background image you need box decoration
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/lifeline/lifeline2.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'This lifeline deletes an incorrect answer from the options.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 80,
                              decoration: const BoxDecoration(
                                // in container if you want to show a background image you need box decoration
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/lifeline/lifeline3.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'This lifeline selects the correct answer from the options.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                              'Start Game',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pop(context); // Close old
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GameTriggerCountDown(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ),
                      )
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
  // END OF STAKE SUMMARY DIALOG
  // END OF STAKE SUMMARY DIALOG

  // START OF RULES DIALOG
  // START OF RULES DIALOG
  openRulesDialog(BuildContext context) {
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
            height: 480,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Rules',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 80,
                                decoration: const BoxDecoration(
                                  // in container if you want to show a background image you need box decoration
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/lifeline/lifeline1.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'This lifeline removes two incorrect answers from the options.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 80,
                                decoration: const BoxDecoration(
                                  // in container if you want to show a background image you need box decoration
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/lifeline/lifeline2.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'This lifeline deletes an incorrect answer from the options.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 80,
                                decoration: const BoxDecoration(
                                  // in container if you want to show a background image you need box decoration
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/lifeline/lifeline3.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'This lifeline selects the correct answer from the options.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 30),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Once a question is passed, it cannot be revered',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Each lifeline has a cost will attract a fee. Lifelines can be used only once',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // START OF BUTTON
                        // START OF BUTTON
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
                                'okay',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pop(context); // Close old
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  // END OF RULES DIALOG
  // END OF RULES DIALOG

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
                widget.category,
              ),
            ),
            actions: [
              MenuIcon(),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    // in container if you want to show a background image you need box decoration
                    image: DecorationImage(
                        image: AssetImage(widget.contentPhoto),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  color: Color(0xff021B34),
                  height: 190,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xff344A61),
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                            child: const Text(
                              'Play Now',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              openStakeDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff344A61),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xff344A61),
                          ),
                        ),
                        margin: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                            child: const Text(
                              'Rules',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              openRulesDialog(context);
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
        ),
      ),
    );
  }
}
