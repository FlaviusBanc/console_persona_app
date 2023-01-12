import 'dart:math';

import 'package:console_persona_app/constants.dart';
import 'package:console_persona_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ClimatePage extends StatefulWidget {
  const ClimatePage({Key? key}) : super(key: key);

  @override
  State<ClimatePage> createState() => _ClimatePageState();
}

class _ClimatePageState extends State<ClimatePage> {
  static const double startAngle = 90, endAngle = 340;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customTextWidget("Current temp 6^", COLOR_ORANGE, 24, FontWeight.w900),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          SleekCircularSlider(
              appearance: CircularSliderAppearance(
                size: min(200, 200),
                startAngle: startAngle,
                angleRange: startAngle - endAngle,
                customWidths: CustomSliderWidths(
                  progressBarWidth: 40,
                  trackWidth: 20,
                  handlerSize: 5,
                ),
                customColors: CustomSliderColors(
                  trackGradientStartAngle: startAngle,
                  trackGradientEndAngle: endAngle,
                  gradientStartAngle: startAngle,
                  gradientEndAngle: endAngle,
                  dotColor: COLOR_ORANGE,
                  hideShadow: true,
                  progressBarColors: [Colors.blueAccent, Colors.black26, Colors.red],
                  progressBarColor: Colors.transparent,
                  trackColors: [Colors.blueAccent, Colors.black26, Colors.red],
                ),
              ),

              min: 15,
              max: 30,
              initialValue: 22,
              onChange: (double value) {
                print(value);
              }),
            ],
          ),
          customButtonWidget("Dezaburire fata", COLOR_ACCENT),
          customButtonWidget("Dezaburire spate", COLOR_ACCENT),
          customButtonWidget("Auto climate", COLOR_ACCENT),
        ],
      ),
    );
  }
}
