import 'package:flutter/material.dart';

import '../../assets/assets.dart';
import '../../constants/constants.dart';
import '../../model/model.dart';
import '../../style/style.dart';
import '../../widgets/widgets.dart';
import 'widgets_collection.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key, required this.userModel}) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: CustomColor.redColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          CircularProfileImage(imageUrl: appAssets.userProfile, radius: 36),
          const SizedBox(height: kSBHeight),
          defaultText(text: userModel.username),
          const SizedBox(height: kSBHeight / 2),
          if (userModel.designation != null) defaultText(text: userModel.designation ?? ""),
          _buildTextRow(),
        ],
      ),
    );
  }

  Padding _buildTextRow() {
    return Padding(
      padding: const EdgeInsets.only(
        top: kPadding * 4,
        left: kPadding * 3,
        right: kPadding * 3,
        bottom: kPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            userModel.age.toString(),
            style: CustomTextStyle.smallTextStyle,
          ),
          Text(
            userModel.regNo,
            style: CustomTextStyle.smallTextStyle,
          ),
        ],
      ),
    );
  }
}
