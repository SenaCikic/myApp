import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double widthR =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? 500
              : 300; 
      var imgAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? Alignment.center
              : Alignment.centerLeft;
      return Container(
        width: widthR,
        alignment: imgAlignment,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/profile.jpg'),
          ],
        ),
      );
    });
  }
}
