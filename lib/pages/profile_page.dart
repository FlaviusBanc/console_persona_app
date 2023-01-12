import 'package:console_persona_app/constants.dart';
import 'package:console_persona_app/utils/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customTextWidget("Please select a profile: ", COLOR_ORANGE, 24, FontWeight.w900),
          customButtonWidget("Profile #1", COLOR_ACCENT),
          customButtonWidget("Profile #2", COLOR_ACCENT),
          customButtonWidget("Profile #3", COLOR_ACCENT),
        ],
      ),
    );
  }
}
