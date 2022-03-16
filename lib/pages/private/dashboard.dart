import 'package:flutter/material.dart';
import 'package:trivial_game/pages/public/register_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: ClipRRect(
            // borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/mainlogo.png'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}
