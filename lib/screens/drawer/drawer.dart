import 'package:flutter/material.dart';
import 'package:gpacalculate/components/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
        itemCount: drawerTitle.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => drawerWidgets[index],
                ),
              );
            },
            child: SizedBox(
              height: 60,
              child: Card(
                color: primaryColor,
                child: Center(
                  child: Text(
                    drawerTitle[index],
                    style: titleLargeStyle,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
    );
  }
}
