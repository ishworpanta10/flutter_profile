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
          builder: (context) => HomeScreen(),
        );

      case RouteConstants.webViewRoute:
        final args = routeSettings.arguments as List<String>;
        return MaterialPageRoute(
          builder: (context) => WebViewPage(
            url: args[0],
            webTitle: args[1],
          ),
        );

      case RouteConstants.gridViewRoute:
        return MaterialPageRoute(
          builder: (context) => const GridViewMenu(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => ErrorRouteScreen(),
        );
    }
  }
}
