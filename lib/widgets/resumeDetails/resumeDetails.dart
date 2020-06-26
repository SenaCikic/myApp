import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/models/resumeDetailsModel.dart';
import 'package:web_app/widgets/resumeDetails/resumeDetailsDesktop.dart';
import 'package:web_app/widgets/resumeDetails/resumeDetailsMobile.dart';

class ResumeDetails extends StatelessWidget {
  final ResumeDetailsModel details;
  const ResumeDetails({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout(
        desktop: ResumeDetailsDesktop(),
        mobile: ResumeDetailsMobile(),
      ),
    );
  }
}
