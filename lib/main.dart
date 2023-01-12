import 'package:console_persona_app/constants.dart';
import 'package:console_persona_app/pages/climate_page.dart';
import 'package:console_persona_app/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _tabItems = const [ProfilePage(), HomePage(), ClimatePage()];
  int _page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_ACCENT,
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.person_sharp, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.ac_unit_sharp, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: COLOR_ORANGE,
        backgroundColor: COLOR_ACCENT,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body:_tabItems[_page]
    );
  }
}
