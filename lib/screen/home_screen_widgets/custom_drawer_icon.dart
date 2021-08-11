import 'package:flutter/material.dart';
import 'package:profile_app/constants/constants.dart';

class CustomDrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 24, height: 2, color: Colors.white),
          const SizedBox(height: kPadding / 2),
          Container(width: 20, height: 2, color: Colors.white),
          const SizedBox(height: kPadding / 2),
          Container(width: 24, height: 2, color: Colors.white),
        ],
      ),
    );
  }
}
