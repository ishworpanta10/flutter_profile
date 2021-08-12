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
              title: const Text("Daraz Nepal Website"),
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
              title: const Text("Sastodeal Grid View Menu"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteConstants.gridViewRoute,
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("App to fetch data from internet"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteConstants.apiPageRoute,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
