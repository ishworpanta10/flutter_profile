import 'package:flutter/material.dart';
import 'package:profile_app/constants/constants.dart';

import '../../../model/model.dart';
import '../../../route/routes.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({required this.offlineCourse});
  final OfflineCourse offlineCourse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${offlineCourse.courseName} Course Content"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding * 2),
          child: Divider(),
        ),
        itemCount: offlineCourse.courseContent.courseContentTitle.length,
        itemBuilder: (context, index) {
          final courseContentHeading = offlineCourse.courseContent.courseContentTitle[index];
          final pdfSource = offlineCourse.courseContent.pdfSourceList[index];
          return ListTile(
            title: Text("${index + 1}. $courseContentHeading "),
            onTap: () {
              Navigator.pushNamed(
                context,
                RouteConstants.offlinePdfViewRoute,
                arguments: [
                  courseContentHeading,
                  pdfSource,
                ],
              );
            },
          );
        },
      ),
    );
  }
}
