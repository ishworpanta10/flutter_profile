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
    courseContent: CourseContent(
      courseContentTitle: ["Html Introduction", "Basic Html Tags", "Multimedia Tags"],
      pdfSourceList: [appAssets.pdfHtml, appAssets.pdfHtmlTagRef, appAssets.pdfHtmlMultimedia],
    ),
  ),
  OfflineCourse(
    iconPath: appAssets.css,
    courseName: 'CSS',
    level: 'Beginner',
    color: Colors.blue,
    courseContent: CourseContent(
      courseContentTitle: ["CSS Introduction", "CSS Styles", "Advance Cheat Sheet"],
      pdfSourceList: [appAssets.pdfCSSIntro, appAssets.pdfCSSStyle, appAssets.pdfCSSCheatSheet],
    ),
  ),
  OfflineCourse(
      iconPath: appAssets.javascript,
      courseName: 'Javascript',
      level: 'Advance',
      color: Colors.orange,
      courseContent: CourseContent(
        courseContentTitle: ["Javascript Cheat sheet", "Basic Js Examples"],
        pdfSourceList: [appAssets.pdfJsCheatSheet, appAssets.pdfJsExample],
      )),
  OfflineCourse(
    iconPath: appAssets.python,
    courseName: 'Python',
    level: 'Beginner',
    color: Colors.lightBlueAccent,
    courseContent: CourseContent(
      courseContentTitle: ["Python Installation", "Loops in python", "Advance Python"],
      pdfSourceList: [appAssets.pdfPythonCheat, appAssets.pdfPythonLoop, appAssets.pdfPythonCheat],
    ),
  ),
  OfflineCourse(
    iconPath: appAssets.cPlus,
    courseName: 'C++',
    level: 'Beginner',
    color: Colors.deepPurpleAccent,
    courseContent: CourseContent(
      courseContentTitle: ["Introduction", "Advance", "C++ Examples"],
      pdfSourceList: [appAssets.pdfCpp, appAssets.pdfCpp, appAssets.pdfCpp],
    ),
  ),
  OfflineCourse(
    iconPath: appAssets.git,
    courseName: 'Git',
    level: 'Advance',
    color: Colors.cyan,
    courseContent: CourseContent(
      courseContentTitle: ["Basic Git Commands", "Git History", "What is Version Control ?"],
      pdfSourceList: [appAssets.pdfGit, appAssets.pdfGit, appAssets.pdfGit],
    ),
  ),
  OfflineCourse(
    iconPath: appAssets.java,
    courseName: 'Java',
    level: 'Beginner',
    color: Colors.blueAccent,
    courseContent: CourseContent(
      courseContentTitle: ["Java Basic", "Loops in Java", "Java Servlet Tutorial"],
      pdfSourceList: [appAssets.pdfJava, appAssets.pdfJava, appAssets.pdfJava],
    ),
  ),
];
