import 'package:flutter/material.dart';
import 'package:profile_app/constants/constants.dart';

class SocialIconRow extends StatelessWidget {
  const SocialIconRow({required this.icon1, required this.icon2, required this.icon3});
  final String icon1, icon2, icon3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Row(
        children: [
          _buildExpandedImg(icon1),
          const SizedBox(width: kPadding * 2),
          _buildExpandedImg(icon2),
          const SizedBox(width: kPadding * 2),
          _buildExpandedImg(icon3),
        ],
      ),
    );
  }

  Expanded _buildExpandedImg(String icon) {
    return Expanded(
      child: Image.asset(
        icon,
        height: 55,
        width: 55,
      ),
    );
  }
}
