import 'package:flutter/material.dart';
import 'package:web_app/widgets/callToAction/callToAction.dart';
import 'package:web_app/widgets/details/details.dart';

class HomeContentDesktop extends StatelessWidget {
  HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SizedBox(width: 60),
      Details(),
      Expanded(
          child: Center(
        child: CallToAction('Read more'),
      ))
    ]);
  }
}
