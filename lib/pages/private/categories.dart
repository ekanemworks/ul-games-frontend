import 'package:flutter/material.dart';
import 'package:trivial_game/pages/custom_layout/menu_icon.dart';
import 'package:trivial_game/pages/private/category.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List _categories_colors_solid = [
    {
      'gradientTop': Color(0xffBC4A01),
      'gradientBottom': Color(0xffBC4A01),
    },
    {
      'gradientTop': Color(0xff04AE23),
      'gradientBottom': Color(0xff04AE23),
    },
    {
      'gradientTop': Color(0xff216EBE),
      'gradientBottom': Color(0xff1C5C9F),
    },
    {
      'gradientTop': Color(0xffFFB544),
      'gradientBottom': Color(0xffFABB00),
    },
    {
      'gradientTop': Color(0xffF607B4),
      'gradientBottom': Color(0xffB21988),
    },
    {
      'gradientTop': Color(0xffBC4A01),
      'gradientBottom': Color(0xffBC4A01),
    },
    {
      'gradientTop': Color(0xff04AE23),
      'gradientBottom': Color(0xff04AE23),
    },
    {
      'gradientTop': Color(0xff216EBE),
      'gradientBottom': Color(0xff1C5C9F),
    },
    {
      'gradientTop': Color(0xffFFB544),
      'gradientBottom': Color(0xffFABB00),
    },
    {
      'gradientTop': Color(0xffF607B4),
      'gradientBottom': Color(0xffB21988),
    },
    {
      'gradientTop': Color(0xffBC4A01),
      'gradientBottom': Color(0xffBC4A01),
    },
    {
      'gradientTop': Color(0xff04AE23),
      'gradientBottom': Color(0xff04AE23),
    },
    {
      'gradientTop': Color(0xff216EBE),
      'gradientBottom': Color(0xff1C5C9F),
    },
    {
      'gradientTop': Color(0xffFFB544),
      'gradientBottom': Color(0xffFABB00),
    },
    {
      'gradientTop': Color(0xffF607B4),
      'gradientBottom': Color(0xffB21988),
    },
    {
      'gradientTop': Color(0xff04AE23),
      'gradientBottom': Color(0xff04AE23),
    },
    {
      'gradientTop': Color(0xff216EBE),
      'gradientBottom': Color(0xff1C5C9F),
    },
    {
      'gradientTop': Color(0xffFFB544),
      'gradientBottom': Color(0xffFABB00),
    },
    {
      'gradientTop': Color(0xffF607B4),
      'gradientBottom': Color(0xffB21988),
    },
    {
      'gradientTop': Color(0xffBC4A01),
      'gradientBottom': Color(0xffBC4A01),
    },
    {
      'gradientTop': Color(0xff04AE23),
      'gradientBottom': Color(0xff04AE23),
    },
    {
      'gradientTop': Color(0xff216EBE),
      'gradientBottom': Color(0xff1C5C9F),
    },
    {
      'gradientTop': Color(0xffFFB544),
      'gradientBottom': Color(0xffFABB00),
    },
    {
      'gradientTop': Color(0xffF607B4),
      'gradientBottom': Color(0xffB21988),
    },
    {
      'gradientTop': Color(0xffBC4A01),
      'gradientBottom': Color(0xffBC4A01),
    },
    {
      'gradientTop': Color(0xff04AE23),
      'gradientBottom': Color(0xff04AE23),
    },
    {
      'gradientTop': Color(0xff216EBE),
      'gradientBottom': Color(0xff1C5C9F),
    },
    {
      'gradientTop': Color(0xffFFB544),
      'gradientBottom': Color(0xffFABB00),
    },
    {
      'gradientTop': Color(0xffF607B4),
      'gradientBottom': Color(0xffB21988),
    },
  ];

  List _totalCategories = [
    {
      "id": "1",
      "displaypicture": "assets/categories/fashion.png",
      "categoryname": "Fashion",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}",
    },
    {
      "id": "2",
      "displaypicture": "assets/categories/sport.png",
      "categoryname": "Sports",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    },
    {
      "id": "3",
      "displaypicture": "assets/categories/politics.png",
      "categoryname": "Politics",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    },
    {
      "id": "4",
      "displaypicture": "assets/categories/entertainment.png",
      "categoryname": "Entertainment",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    },
    {
      "id": "5",
      "displaypicture": "assets/categories/music.png",
      "categoryname": "Music",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    },
    {
      "id": "6",
      "displaypicture": "assets/categories/entertainment.png",
      "categoryname": "Entertainment",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    },
    {
      "id": "7",
      "displaypicture": "assets/categories/music.png",
      "categoryname": "Music",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    },
    {
      "id": "8",
      "displaypicture": "assets/categories/music.png",
      "categoryname": "Music",
      "bgcolor": "FACFCF",
      "text":
          "{'quote':'Fashion is the armor to survive the reality of everyday life.','author':'Bill Cunningham'}"
    }
  ];

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
                'Categories',
              ),
            ),
            actions: [
              MenuIcon(),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: 100),
              height: MediaQuery.of(context).size.height,
              // IF YOU WILL USE LIST VIEW, THEN THE CONTAINER MUST HAVE HEIGHT DIMENSION
              child: _totalCategories.length < 6
                  ? Column(
                      children: _totalCategories.map((e) {
                        return Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  _categories_colors_solid[_totalCategories
                                      .indexOf(e)]['gradientTop'],
                                  _categories_colors_solid[_totalCategories
                                      .indexOf(e)]['gradientBottom']
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // color: Colors.pink.shade100,
                            padding:
                                EdgeInsets.only(top: 7, right: 10, bottom: 7),
                            margin: EdgeInsets.only(
                                top: 20, bottom: 10, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    // padding: EdgeInsets.all(10),
                                    // color: Colors.blue,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        e['displaypicture'],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      e['categoryname'],
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.white
                                          // fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                  width: 110,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Category(
                                            category: e['categoryname'],
                                            contentPhoto: e['displaypicture'],
                                            text: e['text'],
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Play',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black87),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );

                        // ending
                      }).toList(),
                    )
                  :
                  // FOR WHEN CATEGORIES ARE EXCESS: USING LIST INSTEAD OF COLUMN
                  // FOR WHEN CATEGORIES ARE EXCESS: USING LIST INSTEAD OF COLUMN
                  // FOR WHEN CATEGORIES ARE EXCESS: USING LIST INSTEAD OF COLUMN
                  ListView(
                      children: _totalCategories.map((e) {
                        return Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                _categories_colors_solid[
                                    _totalCategories.indexOf(e)]['gradientTop'],
                                _categories_colors_solid[_totalCategories
                                    .indexOf(e)]['gradientBottom']
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // color: Colors.pink.shade100,
                          padding:
                              EdgeInsets.only(top: 7, right: 10, bottom: 7),
                          margin: EdgeInsets.only(
                              top: 20, bottom: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  // padding: EdgeInsets.all(10),
                                  // color: Colors.blue,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      e['displaypicture'],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e['categoryname'],
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.white
                                        // fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 45,
                                width: 110,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Category(
                                          category: e['categoryname'],
                                          contentPhoto: e['displaypicture'],
                                          text: e['text'],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Play',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black87),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );

                        // ending
                      }).toList(),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
