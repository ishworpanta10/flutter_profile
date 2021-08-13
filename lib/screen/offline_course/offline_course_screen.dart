import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../data/data.dart';
import '../../style/style.dart';
import '../screens.dart';

class OfflineCourseScreen extends StatelessWidget {
  const OfflineCourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Offline Courses'),
        ),
        body: Column(
          children: [
            _buildHeader(),
            Expanded(child: _buildCourseGrid()),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseGrid() {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      itemCount: offlineCourses.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        // mainAxisExtent: 150,
      ),
      itemBuilder: (context, index) {
        final offlineCourse = offlineCourses[index];
        return SingleGridTile(offlineCourse: offlineCourse, index: index);
      },
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: kPadding * 2),
          Text(
            "See your curriculum progress",
            style: CustomTextStyle.titleTextStyle,
          ),
          SizedBox(height: kPadding / 2),
          Text(
            "Start by choosing a topic",
            style: CustomTextStyle.subTitleTextStyle,
          ),
          SizedBox(height: kPadding * 2),
        ],
      ),
    );
  }
}
