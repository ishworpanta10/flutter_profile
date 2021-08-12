import 'package:flutter/material.dart';
import 'package:profile_app/constants/constants.dart';
import 'package:profile_app/data/sastodeal_menu_list.dart';

class GridViewMenu extends StatelessWidget {
  const GridViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sastodeal Menus (GridView)'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: kPadding),
          itemCount: sastodealMenuList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 100,
          ),
          itemBuilder: (context, index) {
            final menu = sastodealMenuList[index];
            return GridTile(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                margin: EdgeInsets.only(
                  left: index.isOdd ? 0 : kPadding,
                  right: index.isEven ? 0 : kPadding,
                ),
                child: Center(
                  child: Text(
                    menu,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
