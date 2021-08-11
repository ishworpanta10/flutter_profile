import 'package:flutter/material.dart';
import 'package:profile_app/style/style.dart';

class ErrorRouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Route Page'),
      ),
      body: const Center(
        child: Text(
          'Error Route Page',
          style: CustomTextStyle.defaultTextStyle,
        ),
      ),
    );
  }
}
