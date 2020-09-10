import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final int size;
  const CustomText({Key key, @required this.text, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(
              fontSize: size ?? 14,
              color: color ?? Colors.black,
              fontWeight: FontWeight.bold)),
    );
  }
}
