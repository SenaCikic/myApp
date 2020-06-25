import 'package:flutter/material.dart';
import 'package:web_app/widgets/callToAction/callToAction.dart';
import 'package:web_app/widgets/homeDetails/homeDetails.dart';

class HomeContentDesktop extends StatelessWidget {
  HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      HomeDetails(),
      Expanded(
          child: Center(
        child: CallToAction('Read more'),
      ))
    ]);
  }
}
