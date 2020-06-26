import 'package:flutter/material.dart';
import 'package:web_app/models/resumeItemModel.dart';
import 'package:web_app/widgets/episodeList/resumeItem.dart';
import 'package:web_app/extensions/hoverExtensions.dart';

class ResumeList extends StatelessWidget {
  final episodes = [
    ResumeItemModel(
      title: 'About me',
      imageUrl: 'https://www.instagram.com/p/BnMguKght_J/',
    ),
    ResumeItemModel(
        title: 'Traveling',
        imageUrl: 'https://www.instagram.com/p/BnMguKght_J/'),
    ResumeItemModel(
        title: 'Projects',
        imageUrl: 'https://www.instagram.com/p/BnMguKght_J/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...episodes.map(
          (episode) => ResumeItem(model: episode).moveUpOnHover,
        )
      ],
    );
  }
}
