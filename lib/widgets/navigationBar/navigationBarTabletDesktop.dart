import 'package:flutter/material.dart';
import 'package:web_app/routing/routeNames.dart';
import 'package:web_app/widgets/navbarItem/navbarItem.dart';
import 'package:web_app/widgets/navigationBar/navBarHeadline.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarHeadline(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Home', HomeRoute),
                SizedBox(width: 60),
                NavBarItem('Resume', ResumeRoute),
                SizedBox(width: 60),
                NavBarItem('Contact and Social Media', ContactRoute)
              ],
            )
          ]),
          
    );
  }
}
