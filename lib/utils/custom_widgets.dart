import 'package:flutter/material.dart';


Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget customTextWidget(
    String message, Color color, double fontSize, FontWeight fontWeight) {
  return Text(message,
      style: TextStyle(
          color: color, fontSize: fontSize, fontWeight: fontWeight));
}

Widget customButtonWidget(String buttonLabel, Color textColor) {
  var button = Container(
    height: 40,
    width: 80,
    //194 full
    alignment: FractionalOffset.center,
    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: const BorderRadius.all(Radius.circular(2.0)),
    ),
    child: customTextWidget(buttonLabel, textColor, 16,
        FontWeight.bold), // 35 full
  );
  return button;
}