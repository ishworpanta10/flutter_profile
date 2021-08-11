import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/route/routes.dart';
import 'package:profile_app/screen/screens.dart';
import 'package:profile_app/widgets/widgets.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteConstants.defaultRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => ErrorRouteScreen(),
        );
    }
  }
}
