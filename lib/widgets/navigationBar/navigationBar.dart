import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/widgets/navigationBar/navigationBarMobile.dart';
import 'package:web_app/widgets/navigationBar/navigationBarTabletDesktop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NAvigationBarTabletDesktop(),
    );
  }
}

