import 'package:flutter/material.dart';
import 'package:profile_app/assets/assets.dart';
import 'package:profile_app/constants/constants.dart';
import 'package:profile_app/model/model.dart';
import 'package:profile_app/services.dart';

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
        InfoRow(
          icon: Icons.email,
          infoText: userModel.email,
          onTap: () {
            Services.launchURL(url: "mailto:${userModel.email}?subject=Some Subject");
          },
        ),
        InfoRow(
          icon: Icons.phone,
          infoText: userModel.phone.toString(),
          onTap: () {
            Services.launchURL(url: "tel:${userModel.phone}");
          },
        ),
        const SizedBox(height: kSBHeight),
        const HeaderWithDivider(headerText: 'Follow Me'),
        const SizedBox(height: kSBHeight * 2.4),
        SocialIconRow(
          icon1: appAssets.linkedin,
          onTap1: () {
            Services.launchURL(url: "https://www.google.com/url?q=https://www.linkedin.com/in/ishwor-panta-602a9515b&sa=D&source=hangouts&ust=1628797667648000&usg=AFQjCNFDPPeHvGhc3qjN_9AMt9AAPeIMTw");
          },
          icon2: appAssets.twitter,
          onTap2: () {
            Services.launchURL(url: "https://twitter.com/ishwormessi");
          },
          icon3: appAssets.instagram,
          onTap3: () {
            Services.launchURL(url: "https://instagram.com/ishworpanta10");
          },
        ),
        const SizedBox(height: kSBHeight),
        SocialIconRow(
          icon1: appAssets.facebook,
          onTap1: () {
            Services.launchURL(url: "https://facebook.com/ishworpanta10");
          },
          icon2: appAssets.tiktokRound,
          onTap2: () {
            Services.launchURL(url: "https://tiktok.com");
          },
          icon3: appAssets.github,
          onTap3: () {
            Services.launchURL(url: "https://github.com/ishworpanta10");
          },
        ),
      ],
    );
  }
}
