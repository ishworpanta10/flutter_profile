import 'package:flutter/material.dart';

class OfflineCourse {
  OfflineCourse({
    required this.iconPath,
    required this.courseName,
    required this.level,
    this.color,
  });

  final String iconPath;
  final String courseName;
  final String level;
  final Color? color;
}
