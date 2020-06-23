import 'package:flutter/material.dart';
import 'package:web_app/routing/routeNames.dart';
import 'package:web_app/views/contact/contactView.dart';
import 'package:web_app/views/home/homeView.dart';
import 'package:web_app/views/resume/resumeView.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case ResumeRoute:
      return _getPageRoute(ResumeView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

// PageRoute _getPageRoute(Widget child) {
//   return _FadeRoute(child: child);
// }

// class _FadeRoute extends PageRouteBuilder {
//   final Widget child;
//   _FadeRoute({this.child})
//       : super(
//             pageBuilder: (
//               BuildContext context,
//               Animation<double> animation,
//               Animation<double> secondaryAnimation,
//             ) =>
//                 child,
//             transitionsBuilder: (
//               BuildContext context,
//               Animation<double> animation,
//               Animation<double> secondaryAnimation,
//               Widget child,
//             ) =>
//                 FadeTransition(
//                   opacity: animation,
//                   child: child,
//                 ));
// }
