import 'package:flutter/material.dart';
import 'package:profile_app/model/model.dart';
import 'package:profile_app/style/style.dart';

import 'home_screen_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                print("Opening Drawer");
              },
              child: CustomDrawerIcon()),
          title: const Text(
            "Profile",
            style: CustomTextStyle.headingTextStyle,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderSection(userModel: currentUser),
              SizedBox(height: screenHeight * 0.06),
              const BodySection(userModel: currentUser),
            ],
          ),
        ),
      ),
    );
  }
}
