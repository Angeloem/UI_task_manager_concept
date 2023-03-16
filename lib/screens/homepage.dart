import 'package:flutter/material.dart';

import '../widgets/home.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> screens = [
    const Home(),
    Container(),
    Container(),
    Container(),
  ];

  int activeScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onIconChanged: _iconChanged,
      ),
      body: screens[activeScreenIndex],
    );
  }

  void _iconChanged(int newIndex) {
    setState(() {
      activeScreenIndex = newIndex;
    });
  }
}
