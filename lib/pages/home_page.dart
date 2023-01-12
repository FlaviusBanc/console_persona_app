import 'package:console_persona_app/constants.dart';
import 'package:console_persona_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          addVerticalSpace(130),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButtonWidget("Flash", COLOR_ACCENT),
              customButtonWidget("Clanxon", COLOR_ACCENT),
            ],
          ),
          addVerticalSpace(192),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButtonWidget("Geam jos", COLOR_ACCENT),
              customButtonWidget("Trunk open", COLOR_ACCENT),
              customButtonWidget("Geam sus", COLOR_ACCENT),
            ],
          ),
          AnimatedButtonBar(
            radius: 32.0,
            padding: const EdgeInsets.all(16.0),
            backgroundColor: Colors.blueGrey.shade800,
            foregroundColor: COLOR_ORANGE,
            elevation: 24,
            borderColor: Colors.white,
            borderWidth: 2,
            innerVerticalPadding: 16,
            children: [
              ButtonBarEntry(onTap: () => print('Lock car'), child: Icon(Icons.lock)),
              ButtonBarEntry(onTap: () => print('Unlock'), child: Icon(Icons.lock_open)),
            ],
          ),
          addVerticalSpace(24),
        ],
      ),
    );
  }
}
