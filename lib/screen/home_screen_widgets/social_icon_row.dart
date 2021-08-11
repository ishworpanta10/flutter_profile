import 'package:flutter/material.dart';
import 'package:profile_app/constants/constants.dart';

class SocialIconRow extends StatelessWidget {
  const SocialIconRow({
    required this.icon1,
    required this.icon2,
    required this.icon3,
    this.onTap1,
    this.onTap2,
    this.onTap3,
  });
  final String icon1, icon2, icon3;
  final VoidCallback? onTap1, onTap2, onTap3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Row(
        children: [
          Expanded(child: GestureDetector(onTap: onTap1 ?? () {}, child: _buildImgSection(icon1))),
          const SizedBox(width: kPadding * 2),
          Expanded(child: GestureDetector(onTap: onTap2 ?? () {}, child: _buildImgSection(icon2))),
          const SizedBox(width: kPadding * 2),
          Expanded(child: GestureDetector(onTap: onTap3 ?? () {}, child: _buildImgSection(icon3))),
        ],
      ),
    );
  }

  Widget _buildImgSection(String icon) {
    return Image.asset(
      icon,
      height: 55,
      width: 55,
    );
  }
}
