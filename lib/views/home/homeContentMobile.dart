import 'package:flutter/material.dart';
import 'package:web_app/widgets/callToAction/callToAction.dart';
import 'package:web_app/widgets/homeDetails/homeDetails.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HomeDetails(),
            SizedBox(height: 40),
            CallToAction("Read More")
          ],
        ),
      ],
    );
  }
}
