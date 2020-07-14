import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/locator.dart';
import 'package:web_app/services/callsAndMessagesService.dart';

import 'dart:ui';
import 'package:flutter/rendering.dart';

class ContactView extends StatelessWidget {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
  final String number = '+38766648178';
  final String email = 'cikicsena@gmail.com';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double paddingR =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? 30
              : 15; 
              double iconSize =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? 70
              : 30; 
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: paddingR),
              color: Colors.blueGrey,
              iconSize: iconSize,
              icon: Icon(Icons.phone),
              onPressed: () {
                _service.call(number);
              },
            ),
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: paddingR),
              iconSize: iconSize,
              color: Colors.blue,
              icon: Icon(Icons.mail),
              onPressed: () {
                _service.sendEmail(number);
              },
            ),
            GestureDetector(
              onTap: _launchInstagram,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: paddingR),
                width: iconSize,
                height: iconSize,
                child: Image.asset(
                  'assets/images/instagram.jpg', // On click should redirect to an URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchLinkedin,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: paddingR),
                width: iconSize,
                height: iconSize,
                child: Image.asset(
                  'assets/images/linkedin.jpg', // On click should redirect to an URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchGithub,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: paddingR),
                width: iconSize,
                height: iconSize,
                child: Image.asset(
                  'assets/images/github.jpg', // On click should redirect to an URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

_launchInstagram() async {
  const url = 'https://www.instagram.com/senacikic/?hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLinkedin() async {
  const url = 'https://www.linkedin.com/in/sena-cikic-29869b169/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGithub() async {
  const url = 'https://github.com/SenaCikic';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
