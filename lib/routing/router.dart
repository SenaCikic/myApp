import 'package:flutter/material.dart';
import 'package:web_app/routing/routeNames.dart';
import 'package:web_app/views/contact/contactView.dart';
import 'package:web_app/views/home/homeView.dart';
import 'package:web_app/views/resume/resumeView.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case ResumeRoute:
      return _getPageRoute(ResumeView(), settings);
    case ContactRoute:
      return _getPageRoute(ContactView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

// PageRoute _getPageRoute(Widget child) {
//   return MaterialPageRoute(builder: (context) => child);
// }

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
