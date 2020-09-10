import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/widgets/widgets.dart';

class BottomNavItem extends StatelessWidget {
  final String icon;
  final String icontext;
  const BottomNavItem({Key key, this.icon, this.icontext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(icon, height: 25, color: Colors.grey),
            Spacer(),
            CustomText(text: icontext, color: Colors.black.withOpacity(.7))
          ],
        ));
  }
}
