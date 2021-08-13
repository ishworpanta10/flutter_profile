import 'package:flutter/material.dart';

import '../assets/assets.dart';
import '../model/model.dart';

List<String> sastodealMenuList = [
  "Daily Needs",
  "Electronics",
  "Lifestyle",
  "Mens Fashion",
  "Womens Fashion",
  "Books",
  "Myntra Brands",
  "Track Order",
];

const currentUser = UserModel(
  username: "ishworpanta10",
  age: 24,
  designation: 'Developer',
  regNo: "454 - 6780 - 656",
  email: "ishworpanta10@gmail.com",
  phone: 9843750658,
);

List<OfflineCourse> offlineCourses = [
  OfflineCourse(
    iconPath: appAssets.html,
    courseName: 'HTML',
    level: 'Beginner',
    color: Colors.deepOrange,
    pdfSource: appAssets.pdfHtml,
  ),
  OfflineCourse(
    iconPath: appAssets.css,
    courseName: 'CSS',
    level: 'Beginner',
    color: Colors.blue,
    pdfSource: appAssets.pdfHtml,
  ),
  OfflineCourse(
    iconPath: appAssets.javascript,
    courseName: 'Javascript',
    level: 'Advance',
    color: Colors.orange,
    pdfSource: appAssets.pdfHtml,
  ),
  OfflineCourse(
    iconPath: appAssets.python,
    courseName: 'Python',
    level: 'Beginner',
    color: Colors.lightBlueAccent,
    pdfSource: appAssets.pdfHtml,
  ),
  OfflineCourse(
    iconPath: appAssets.cPlus,
    courseName: 'C++',
    level: 'Beginner',
    color: Colors.deepPurpleAccent,
    pdfSource: appAssets.pdfHtml,
  ),
  OfflineCourse(
    iconPath: appAssets.git,
    courseName: 'Git',
    level: 'Advance',
    color: Colors.cyan,
    pdfSource: appAssets.pdfHtml,
  ),
  OfflineCourse(
    iconPath: appAssets.java,
    courseName: 'Java',
    level: 'Beginner',
    color: Colors.blueAccent,
    pdfSource: appAssets.pdfHtml,
  ),
];
