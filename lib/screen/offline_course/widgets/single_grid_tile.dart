import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../model/model.dart';
import '../../../style/style.dart';

class SingleGridTile extends StatelessWidget {
  const SingleGridTile({required this.offlineCourse, required this.index});

  final OfflineCourse offlineCourse;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: offlineCourse.color?.withOpacity(0.5) ?? Colors.grey[300],
        ),
        margin: EdgeInsets.only(
          left: index.isOdd ? 0 : kPadding,
          right: index.isEven ? 0 : kPadding,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(offlineCourse.iconPath, height: 90),
              const SizedBox(height: kPadding),
              Text(
                offlineCourse.courseName,
                style: CustomTextStyle.boldBlackTextStyle,
              ),
              const SizedBox(height: kPadding),
              Text(
                offlineCourse.level,
                style: CustomTextStyle.subTitleTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
