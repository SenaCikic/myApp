import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
           Padding(
             padding: const EdgeInsets.only(left: 40.0),
             child: Text('Sena Čikić', style: TextStyle(fontSize: 30)),
           ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Home'),
              SizedBox(width: 60),
              _NavBarItem('Resume'),
              SizedBox(width: 60),
              _NavBarItem('Contact')
            ],
          )
        ]
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: TextStyle(
      fontSize: 18
    ),);
  }
}