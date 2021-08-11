import 'package:flutter/material.dart';
import 'package:profile_app/assets/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Image.asset(
          appAssets.userProfile,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
