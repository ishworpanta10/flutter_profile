import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class CustomTextStyle {
  // for dynamic theme
  /* static TextStyle defaultTextStyle(BuildContext context) => TextStyle(
    color: Theme.of(context).textTheme.subtitle1?.color,
  );*/

  static const TextStyle defaultTextStyle = TextStyle(
    color: CustomColor.whiteColor,
    fontSize: 18,
  );

  static const TextStyle headingTextStyle = TextStyle(
    color: CustomColor.whiteColor,
    fontSize: 20,
  );

  static const TextStyle boldBlackTextStyle = TextStyle(
    color: CustomColor.blackColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle smallTextStyle = TextStyle(
    color: CustomColor.whiteColor,
    fontSize: 14,
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: CustomColor.blackColor,
    fontSize: 18,
  );

  static const TextStyle subTitleTextStyle = TextStyle(
    color: CustomColor.black54,
    fontSize: 16,
  );
}
