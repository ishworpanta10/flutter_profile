import 'package:flutter/material.dart';

import '../../assets/assets.dart';
import '../../model/model.dart';
import '../../route/routes.dart';
import '../../widgets/circular_profile_image.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, required this.userModel}) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircularProfileImage(
                imageUrl: appAssets.userProfile,
              ),
              accountName: Text(userModel.username),
              accountEmail: Text(userModel.email),
            ),
            ListTile(
              title: const Text("Daraz Nepal Website (Web View)"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteConstants.webViewRoute,
                  arguments: ["https://www.daraz.com.np", "Daraz Nepal"],
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Sastodeal Menu (Grid View)"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteConstants.gridViewRoute,
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Offline Courses"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text("Fetching data from internet (Simple App)"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteConstants.apiPageRoute,
                );
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
