import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CvView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      // double paddingR =
      //     sizingInformation.deviceScreenType == DeviceScreenType.desktop
      //         ? 30
      //         : 15;

      return new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 600, bottom: 30, top: 100),
            child: Text(
              'WORK EXPERIENCE ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ),
          new ListTile(
            leading: new MyBullet(15.0, 0, 5),
            title: new Text(
              'Junior Flutter Developer, Tech387 Sarajevo (Dec 2019 – Mar 2020)',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'Worked on Fill – mobile application for Android and iOS (Flutter/Dart)'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'EŠpediter - mobile application for Android and iOS (Flutter/Dart)'),
          ),
          new ListTile(
            leading: new MyBullet(15, 0, 5),
            title: new Text(
              'Intern at consulting, Deloitte Sarajevo (Oct 2017 – Apr 2018)',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'Worked on a project related to the impact of macroeconomic variables on the calculation of risk parameters for financial institutions'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'Worked on improving the z-shift method for calculating risk parameters in accordance with the international financial reporting standard'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'Included in the project of audit support for financial institutions'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 600, bottom: 30, top: 50),
            child: Text(
              'EDUCATION ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'University of Sarajevo, Computer Science - Master Studies (2018 – Present)'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'University of Sarajevo, Bachelor of applied mathematics (2013 – 2018)'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 600, bottom: 30, top: 50),
            child: Text(
              'SKILLS ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text(
                'Programming languages: Dart, C++, Python, HTML, CSS, JavaScript, Typescript'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text('Frameworks: React, Flutter, Angular'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text('Firebase'),
          ),
          new ListTile(
            leading: new MyBullet(5.0, 20, 10),
            title: new Text('Github, Jira'),
          ),
        ],
      );
    });
  }
}

class MyBullet extends StatelessWidget {
  final double size;
  final double marginL;
  final double marginT;
  MyBullet(this.size, this.marginL, this.marginT);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: size,
      width: size,
      margin: EdgeInsets.only(left: marginL, top: marginT),
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
