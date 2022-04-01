import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/category.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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

  List _categories_colors_gradient = [
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
              image: AssetImage('assets/landing_img/img2.png'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text('Categories'),
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
              // IF YOU WILL USE LIST VIEW, THEN THE CONTAINER MUST HAVE HEIGHT DIMENSION
              child: Column(
                children: _topCategories.map((e) {
                  // return Container(
                  //   decoration: BoxDecoration(
                  //     color: _categories_colors_solid[_topCategories.indexOf(e)]
                  //         ['body'],
                  //     borderRadius: BorderRadius.circular(33.0),
                  //     border: Border.all(
                  //       color:
                  //           _categories_colors_solid[_topCategories.indexOf(e)]
                  //               ['border'],
                  //     ),
                  //   ),
                  //   // color: Colors.pink.shade100,
                  //   padding: EdgeInsets.only(top: 7, right: 10, bottom: 7),
                  //   margin: EdgeInsets.only(top: 20, bottom: 10),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Expanded(
                  //         flex: 2,
                  //         child: Container(
                  //           // padding: EdgeInsets.all(10),
                  //           // color: Colors.blue,
                  //           child: CircleAvatar(
                  //             radius: 30,
                  //             backgroundImage: AssetImage(
                  //               e['displaypicture'],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         flex: 3,
                  //         child: Container(
                  //           alignment: Alignment.centerLeft,
                  //           child: Text(
                  //             e['categoryname'],
                  //             style: TextStyle(
                  //               fontSize: 16.0,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 45,
                  //         width: 110,
                  //         child: OutlinedButton(
                  //           onPressed: () {
                  //             Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) => Category(
                  //                   category: e['categoryname'],
                  //                   contentPhoto: e['displaypicture'],
                  //                   text: e['text'],
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //           child: Text('Play'),
                  //           style: ButtonStyle(
                  //             shape: MaterialStateProperty.all<
                  //                 RoundedRectangleBorder>(
                  //               RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // );

                  return Container(
                    decoration: BoxDecoration(
                      color: _categories_colors_solid[_topCategories.indexOf(e)]
                          ['body'],
                      borderRadius: BorderRadius.circular(1.0),
                      border: Border.all(
                        color:
                            _categories_colors_solid[_topCategories.indexOf(e)]
                                ['border'],
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
