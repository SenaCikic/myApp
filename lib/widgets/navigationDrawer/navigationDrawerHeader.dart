import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        color: primaryColor,
        alignment: Alignment.center,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Text('MENU',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)),
          Text(
            '',
            style: TextStyle(color: Colors.white),
          )
        ]));
  }
}
