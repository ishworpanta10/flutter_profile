import 'package:flutter/material.dart';

import 'course_content.dart';

class OfflineCourse {
  OfflineCourse({
    required this.iconPath,
    required this.courseName,
    required this.level,
    this.color,
    required this.courseContent,
    // required this.pdfSource,
  });
  // : assert(pdfSourceList == courseContentTitle, "Pdf and course content must be equal");

  final String iconPath;
  final String courseName;
  final String level;
  final Color? color;
  final CourseContent courseContent;
  // final String pdfSource;
}
