import 'package:flutter/material.dart';
import 'package:web_app/widgets/callToAction/callToAction.dart';
import 'package:web_app/widgets/details/details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Details(),
        SizedBox(height: 40),
        CallToAction("Read More")
      ],
    );
  }
}
