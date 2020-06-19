import 'package:flutter/material.dart';
import 'package:web_app/widgets/navigationBar/navBarHeadline.dart';
import 'package:web_app/widgets/navigationBar/navBarItem.dart';

class NAvigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          NavBarHeadline(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home'),
              SizedBox(width: 60),
              NavBarItem('Resume'),
              SizedBox(width: 60),
              NavBarItem('Contact')
            ],
          )
        ]
      ),
    );
  }
}