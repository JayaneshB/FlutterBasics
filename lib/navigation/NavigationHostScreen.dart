import 'package:flutter/material.dart';
import 'package:flutter_installation/navigation/NavigationThirdScreen.dart';
import 'package:flutter_installation/navigation/NavigationHomeScreen.dart';
import 'package:flutter_installation/navigation/NavigationSecondaryScreen.dart';

void main() {
  runApp(SimpleNavigation());
}

class SimpleNavigation extends StatelessWidget {
  const SimpleNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreenManager(),
    );
  }
}


class MainScreenManager extends StatefulWidget {
  const MainScreenManager({super.key});

  @override
  State<MainScreenManager> createState() => MainScreenManagerState();
}

class MainScreenManagerState extends State<MainScreenManager> {
  int _currentIndex = 0;

  final List<String> _titles = [
    'Home Screen',
    'Second Screen',
    'Third Screen',
  ];

  void navigateTo(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    NavigationHomeScreen(),
    NavigationSecondaryScreen(),
    NavigationThirdScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        leading: _currentIndex != 0
            ? IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              _currentIndex = _currentIndex - 1;
            });
          },
        )
            : null, // no back button on home screen
      ),
      body: _screens[_currentIndex],
    );
  }
}