import 'package:flutter/material.dart';
import 'package:web_app/locator.dart';
import 'package:web_app/services/navigationService.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Don't ever use a service directly in the UIto vhange any king of state
        // Services should only be used from a viewmodel
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
