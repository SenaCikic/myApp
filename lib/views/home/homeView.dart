import 'package:flutter/material.dart';
import 'package:web_app/widgets/callToAction/callToAction.dart';
import 'package:web_app/widgets/centeredView/centeredView.dart';
import 'package:web_app/widgets/details/details.dart';
import 'package:web_app/widgets/navigationBar/navigationBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
              child: Column(children: <Widget>[
          NavigationBar(),
          Expanded(child: Row(children: <Widget>[
            SizedBox(width: 60),
            Details(),
            Expanded(child: Center(child: CallToAction('Read more'),))
          ]),)
        ]),
      ),
    );
  }
}