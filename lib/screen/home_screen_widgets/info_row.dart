import 'package:flutter/material.dart';
import 'package:profile_app/constants/constants.dart';
import 'package:profile_app/screen/home_screen_widgets/widgets.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({required this.icon, required this.infoText});
  final IconData icon;
  final String infoText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding * 2, vertical: kPadding / 2),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.black,
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 6),
          boldText(text: infoText),
        ],
      ),
    );
  }
}
