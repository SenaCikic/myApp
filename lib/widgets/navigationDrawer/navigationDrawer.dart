import 'package:flutter/material.dart';
import 'package:web_app/routing/routeNames.dart';
import 'package:web_app/widgets/navbarItem/navbarItem.dart';
import 'package:web_app/widgets/navigationDrawer/navigationDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 16),
      ]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavBarItem('Home', HomeRoute, icon: Icons.home),
          NavBarItem('Resume', ResumeRoute, icon: Icons.person),
          NavBarItem('Contact', ContactRoute, icon: Icons.contact_mail)
        ],
      ),
    );
  }
}
