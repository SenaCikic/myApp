import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/locator.dart';
import 'package:web_app/routing/routeNames.dart';
import 'package:web_app/routing/router.dart';
import 'package:web_app/services/navigationService.dart';
import 'package:web_app/widgets/centeredView/centeredView.dart';
import 'package:web_app/widgets/navigationBar/navigationBar.dart';
import 'package:web_app/widgets/navigationDrawer/navigationDrawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

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
                child: Navigator(
              key: locator<NavigationService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: HomeRoute,
            ))
          ]),
        ),
      ),
    );
  }
}
