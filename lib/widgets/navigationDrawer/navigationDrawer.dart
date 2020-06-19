import 'package:flutter/material.dart';
import 'package:web_app/widgets/navigationDrawer/drawerItem.dart';
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
          DrawerItem('Home', Icons.home),
          DrawerItem('About me', Icons.person),
          DrawerItem('Contact', Icons.contact_mail)
        ],
      ),
    );
  }
}
