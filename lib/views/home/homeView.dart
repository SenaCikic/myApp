import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/views/home/homeContentDesktop.dart';
import 'package:web_app/views/home/homeContentMobile.dart';
import 'package:web_app/widgets/centeredView/centeredView.dart';
import 'package:web_app/widgets/navigationBar/navigationBar.dart';
import 'package:web_app/widgets/navigationDrawer/navigationDrawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(children: <Widget>[
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                desktop: HomeContentDesktop(),
                mobile: HomeContentMobile(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
