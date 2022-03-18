import 'package:flutter/material.dart';
import 'package:trivial_game/pages/private/dashboard_body.dart';
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
        body: Container(
          width: double.maxFinite, // maximum width
          height: double.maxFinite, // maxium height
          decoration: const BoxDecoration(
            // in container if you want to show a background image you need box decoration
            image: DecorationImage(
                image: AssetImage('assets/landing_img/img2.png'),
                fit: BoxFit.cover),
          ),
          child: DashboardBody(),
        ),
      ),
    );
  }
}
