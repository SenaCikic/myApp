import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/views/home/homeContentDesktop.dart';
import 'package:web_app/views/home/homeContentMobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
                desktop: HomeContentDesktop(),
                mobile: HomeContentMobile(),
              );
  }
}
