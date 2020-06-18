import 'package:flutter/material.dart';

class Details extends StatelessWidget {
 const Details({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Image.asset('assets/images/profile.jpg'),
        ],
      ),
    );
  }
}