import 'package:flutter/material.dart';

import 'route/custom_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Profile App',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      onGenerateRoute: CustomRouter.onGenerateRoute,
    );
  }
}
