import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../style/style.dart';

class HeaderWithDivider extends StatelessWidget {
  const HeaderWithDivider({required this.headerText});
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          constraints: const BoxConstraints(minWidth: 150),
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2, vertical: kPadding / 2),
          color: CustomColor.purpleColor,
          child: Text(
            headerText,
            style: CustomTextStyle.headingTextStyle,
          ),
        ),
        const Expanded(
          child: Divider(
            color: CustomColor.purpleColor,
            thickness: 1.8,
          ),
        ),
      ],
    );
  }
}
