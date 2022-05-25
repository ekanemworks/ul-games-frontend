import 'package:flutter/material.dart';
import 'package:trivial_game/pages/menu_pages/help_screen.dart';
import 'package:trivial_game/pages/menu_pages/notification.dart';
import 'package:trivial_game/pages/menu_pages/profile_edit.dart';
import 'package:trivial_game/pages/menu_pages/settings.dart';
import 'package:trivial_game/pages/menu_pages/shop/shop_home.dart';
import 'package:trivial_game/pages/menu_pages/wallet/wallet_screen.dart';
import 'package:trivial_game/pages/public/login_page.dart';
import 'package:trivial_game/pages/public/start_screen.dart';

class MenuIcon extends StatefulWidget {
  @override
  _MenuIconState createState() => _MenuIconState();
}

class _MenuIconState extends State<MenuIcon> {
  void handleClick(String value) {
    if (value == 'Profile') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileEdit(),
        ),
      );
    } else if (value == 'Settings') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Settings(),
        ),
      );
    } else if (value == 'My Wallet') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WalletScreen(),
        ),
      );
    } else if (value == 'Shop') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShopHome(),
        ),
      );
    } else if (value == 'Help') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HelpScreen(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StartScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          ),
          PopupMenuButton<String>(
            padding: EdgeInsets.only(left: 30),
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {
                'Profile',
                'Settings',
                'My Wallet',
                'Shop',
                'Help',
                'Log out'
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: SizedBox(
                    width: 130,
                    child: Row(
                      children: [
                        Icon(
                          choice == 'Profile'
                              ? Icons.person
                              : choice == 'Settings'
                                  ? Icons.settings
                                  : choice == 'My Wallet'
                                      ? Icons.monetization_on
                                      : choice == 'Shop'
                                          ? Icons.shopping_bag
                                          : choice == 'Help'
                                              ? Icons.help
                                              : Icons.logout,
                          size: 30,
                          color: Colors.red,
                        ),
                        SizedBox(width: 20),
                        Text(choice),
                      ],
                    ),
                  ),
                );
              }).toList();
            },
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
