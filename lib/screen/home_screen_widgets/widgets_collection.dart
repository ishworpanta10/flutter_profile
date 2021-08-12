import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';

Text defaultText({required String text}) {
  return Text(
    text,
    style: CustomTextStyle.defaultTextStyle,
  );
}

Text boldText({required String text}) {
  return Text(
    text,
    style: CustomTextStyle.boldBlackTextStyle,
  );
}
