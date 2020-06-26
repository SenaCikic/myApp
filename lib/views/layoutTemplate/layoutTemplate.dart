import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/widgets/centeredView/centeredView.dart';
import 'package:web_app/widgets/navigationBar/navigationBar.dart';
import 'package:web_app/widgets/navigationDrawer/navigationDrawer.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
              children: <Widget>[NavigationBar(), Expanded(child: child)]),
        ),
      ),
    );
  }
}
