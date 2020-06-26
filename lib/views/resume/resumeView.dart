import 'package:flutter/material.dart';
import 'package:web_app/models/resumeDetailsModel.dart';
import 'package:web_app/widgets/episodeList/resumeList.dart';
import 'package:web_app/widgets/resumeDetails/resumeDetails.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        ResumeDetails(
          details: ResumeDetailsModel(
            title: 'About me',
            description:
                'There you can read more about me and my projects',
          ),
        ),
        SizedBox(
          height: 50,
        ),
        ResumeList(),
      ],
    ));
  }
}
