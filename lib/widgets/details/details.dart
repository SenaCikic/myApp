import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Details extends StatelessWidget {
 const Details({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
          builder: (context, sizingInformation) {
            double widthR = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 300 : 400;
            
            return Container(
        width: widthR,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Image.asset('assets/images/profile.jpg'),
          ],
        ),
      );
          }
    );
  }
}