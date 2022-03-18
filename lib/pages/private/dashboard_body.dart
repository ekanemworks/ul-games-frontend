import 'package:flutter/material.dart';

class DashboardBody extends StatefulWidget {
  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  List _topCategories = [
    {"displaypicture": "s", "fullname": "Michael", "lastchat": "s"},
    {"displaypicture": "s", "fullname": "Mom2", "lastchat": "s"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.red,
        padding: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NAME OF USER
            Container(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 30),
              child: Text('Hello Kunle'),
            ),

            // SLIDER
            Container(
              color: Colors.green,
              padding: EdgeInsets.only(),
              height: 280,
            ),

            // HELP VIDEO
            Container(
              color: Colors.blue,
              padding: EdgeInsets.only(),
              height: 280,
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
                  OutlinedButton(
                    child: Text('view all'),
                    onPressed: () {},
                  )
                ],
              ),
            ),

            // TOP CATEGORIES: CONTENT
            Container(
              color: Colors.blue,
              padding: EdgeInsets.only(),
              height: 280,
              child: Center(
                child: Text('Video'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
