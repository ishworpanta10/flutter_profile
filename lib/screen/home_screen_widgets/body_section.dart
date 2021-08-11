import 'package:flutter/material.dart';
import 'package:profile_app/assets/assets.dart';
import 'package:profile_app/constants/constants.dart';
import 'package:profile_app/model/model.dart';

import 'widgets.dart';

class BodySection extends StatelessWidget {
  const BodySection({Key? key, required this.userModel}) : super(key: key);

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderWithDivider(headerText: 'Contact Me'),
        const SizedBox(height: kSBHeight),
        InfoRow(icon: Icons.email, infoText: userModel.email),
        InfoRow(icon: Icons.phone, infoText: userModel.phone.toString()),
        const SizedBox(height: kSBHeight),
        const HeaderWithDivider(headerText: 'Follow Me'),
        const SizedBox(height: kSBHeight * 2.4),
        SocialIconRow(icon1: appAssets.linkedin, icon2: appAssets.twitter, icon3: appAssets.instagram),
        const SizedBox(height: kSBHeight),
        SocialIconRow(icon1: appAssets.facebook, icon2: appAssets.tiktokRound, icon3: appAssets.github),
      ],
    );
  }
}
