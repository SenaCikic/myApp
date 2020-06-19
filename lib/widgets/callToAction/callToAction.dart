import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/widgets/callToAction/callToActionMobile.dart';
import 'package:web_app/widgets/callToAction/callToActionTabletDesktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CallToActionTabletDesktop(title),
      mobile: CallToActionMobile(title)
    );
  }
}