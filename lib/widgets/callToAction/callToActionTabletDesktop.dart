import 'dart:js';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/views/resume/resumeView.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
 
      return ListView(
        children: [
          Column(children: [
            Container(
                margin: EdgeInsets.only(top: 80, bottom: 30),
                width: 600,
                child: Text(
                  "My name is Sena Čikić. I am from Bijelo Polje, Montenegro. Currently, I live in Sarajevo, Bosnia and Herzegovina. I am a master's student in Computer Science at the Faculty of Science of the University of Sarajevo, with a Bachelor's Degree in Applied Mathematics. I gained my work experience working as Junior Flutter Developer at Tech387 where I developed mobile applications for Android and iOS (Flutter/Dart): Fill and EŠpediter,  as well as an Intern at Consulting at Delloite d.o.o. in Sarajevo, Bosnia and Herzegovina ...",
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                )),
            ButtonTheme(
              minWidth: 200.0,
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResumeView()),
                  );
                },
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
        ],
      );
    
  }
}
