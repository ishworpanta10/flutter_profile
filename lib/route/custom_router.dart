import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/screens.dart';
import '../widgets/widgets.dart';
import 'routes.dart';

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

      case RouteConstants.apiPageRoute:
        return MaterialPageRoute(
          builder: (context) => const ApiDataScreen(),
        );

      case RouteConstants.offlineCoursePageRoute:
        return MaterialPageRoute(
          builder: (context) => const OfflineCourseScreen(),
        );

      case RouteConstants.offlinePdfViewRoute:
        final pdfSourceAndInfo = routeSettings.arguments as List<String>;

        return MaterialPageRoute(
          builder: (context) => PdfViewPage(
            pdfSource: pdfSourceAndInfo[0],
            courseName: pdfSourceAndInfo[1],
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => ErrorRouteScreen(),
        );
    }
  }
}
