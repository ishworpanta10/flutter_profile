import 'package:flutter/material.dart';

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
      body: ListView.builder(
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
