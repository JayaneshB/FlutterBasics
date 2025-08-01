import 'package:flutter/material.dart';
import 'package:flutter_installation/navigation/NavigationHostScreen.dart';


class NavigationHomeScreen extends StatelessWidget {
  const NavigationHomeScreen({super.key});

  /**
   *  Code represents navigation with each app bar
   */
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(title: const Text("Flutter Navigation")),
  //       body: Padding(
  //           padding: const EdgeInsets.all(16),
  //           child: Center(
  //             child: OutlinedButton(
  //               onPressed: () {
  //                 (context.findAncestorStateOfType<MainScreenManagerState>())?.navigateTo(1);
  //
  //                 // Navigator.push(
  //                 //   context,
  //                 //   MaterialPageRoute(builder: (context) => NavigationSecondaryScreen()),
  //                 // );
  //               },
  //               style: OutlinedButton.styleFrom(
  //                 side: const BorderSide(color: Colors.black, width: 2),
  //                 // Outer border
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(25),
  //                 ),
  //               ),
  //               child: Padding(
  //                 padding: const EdgeInsets.all(15),
  //                 child: const Text(
  //                   "Navigate to Second Screen",
  //                   style: TextStyle(
  //                       fontSize: 20,
  //                       color: Colors.blue
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           )
  //       )
  //   );
  // }

  ///  Code represents navigation using single app bar
  ///
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        child: const Text("Go to Second Screen"),
        onPressed: () {
          // Access stateful parent and change screen
          (context.findAncestorStateOfType<MainScreenManagerState>())
              ?.navigateTo(1);
        },
      ),
    );
  }
}