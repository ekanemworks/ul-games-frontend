import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/categories.dart';
import 'package:trivial_game/pages/private/category.dart';

class DashboardBody extends StatefulWidget {
  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  List _categories_colors_solid = [
    {
      'border': Color(0xffF24E1E),
      'body': Color(0xffFEF1F1),
    },
    {
      'border': Color(0xff006F2F),
      'body': Color(0xffECF7EE),
    },
    {
      'border': Color(0xffC926B4),
      'body': Color(0xffFDE0F5),
    },
    {
      'border': Color(0xffF2BC1A),
      'body': Color(0xffFFFDED),
    },
    {
      'border': Color(0xff3A59DA),
      'body': Color(0xffEFF1FC),
    },
  ];

  List _topCategories = [
    {
      "id": "1",
      "displaypicture": "assets/categories/entertainment.png",
      "categoryname": "Entertainment",
      "bgcolor": "FACFCF",
      "text": "{" ":" "," ":" "}"
    },
    {
      "id": "2",
      "displaypicture": "assets/categories/sport.png",
      "categoryname": "Sports",
      "bgcolor": "FACFCF",
      "text": "{" ":" "," ":" "}"
    },
    {
      "id": "3",
      "displaypicture": "assets/categories/sport.png",
      "categoryname": "Sports",
      "bgcolor": "FACFCF",
      "text": "{" ":" "," ":" "}"
    },
  ];

  List _slider = [];

  buildSlide() {
    Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent, // 1
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 60,
            width: 80,
            decoration: const BoxDecoration(
              // in container if you want to show a background image you need box decoration
              image: DecorationImage(
                  image: AssetImage('assets/main/unlockgames_98.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NAME OF USER
              Container(
                padding: EdgeInsets.only(top: 30, left: 20, bottom: 30),
                child: Text(
                  'Hello, Steven',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Preahvihear'),
                ),
              ),

              // SLIDER
              Container(
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(),
                height: 230,
                child: CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      height: 50,
                      // color: Colors.green,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      decoration: const BoxDecoration(
                        // in container if you want to show a background image you need box decoration
                        image: DecorationImage(
                            image: AssetImage('assets/slider/slider1.png'),
                            fit: BoxFit.cover),
                      ),
                      // child: Text('$index'),
                    );
                  },
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlayInterval: Duration(seconds: 2),
                  ),
                ),
              ),

              // HELP VIDEO
              Container(
                color: Colors.grey.shade400,
                padding: EdgeInsets.only(),
                height: 230,
                child: Center(
                  child: Text('Video'),
                ),
              ),

              // TOP CATEGORIES: TITLE
              Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, bottom: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Category',
                      style: TextStyle(fontSize: 22),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //   colors: [Color(0xffEFB996), Color(0xffEFB996)],
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        // ),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Color(0xffEFB996),
                        ),
                      ),
                      child: SizedBox(
                        width: double.maxFinite, // <-- Your width
                        height: 40,
                        child: ElevatedButton(
                          child: const Text(
                            'View all',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Categories(),
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

              // TOP CATEGORIES: CONTENT
              Container(
                // color: Colors.blue,
                // padding: EdgeInsets.only(),
                // height: 280,
                child: Column(
                  children: _topCategories.map((e) {
                    return Container(
                      decoration: BoxDecoration(
                        color:
                            _categories_colors_solid[_topCategories.indexOf(e)]
                                ['body'],
                        borderRadius: BorderRadius.circular(1.0),
                        border: Border.all(
                          color: _categories_colors_solid[
                              _topCategories.indexOf(e)]['border'],
                        ),
                      ),
                      // color: Colors.pink.shade100,
                      padding: EdgeInsets.only(top: 7, right: 10, bottom: 7),
                      margin: EdgeInsets.only(top: 20, bottom: 10),
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
                                  fontSize: 18.0,
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
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
