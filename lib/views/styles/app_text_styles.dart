import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextStyles {
  final TextStyle heading2 = TextStyle(color: Resources.colors.primary, fontSize: 16.0, fontWeight: FontWeight.w600, letterSpacing: 0);
  final TextStyle paragraph2 = TextStyle(color: Resources.colors.primary, fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0, height: 1.6);
  final TextStyle paragraph3 = TextStyle(color: Resources.colors.primary_500, fontSize: 12.0, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, letterSpacing: 0);
  final TextStyle paragraphBold = TextStyle(color: Resources.colors.primary, fontSize: 14.0, fontWeight: FontWeight.w600, letterSpacing: 0);
  final TextStyle primaryButton = TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0);
  final TextStyle secondaryButton = TextStyle(color: Resources.colors.primary, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0);
  final TextStyle primaryLink = TextStyle(color: Resources.colors.accent, fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: 0);
}