import 'package:flutter/material.dart';
import 'package:web_app/locator.dart';
import 'package:web_app/views/layoutTemplate/layoutTemplate.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      home: LayoutTemplate(),
    );
  }
}
