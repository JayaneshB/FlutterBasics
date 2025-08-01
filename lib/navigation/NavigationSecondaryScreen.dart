import 'package:flutter/material.dart';
import 'package:flutter_installation/navigation/NavigationHostScreen.dart';


// class NavigationSecondaryScreen extends StatelessWidget {
//   const NavigationSecondaryScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => NavigationThirdScreen())
//               );
//             },
//             child:Text('You are now on the Second Screen')
//         ),
//       ),
//     );
//   }
// }

class NavigationSecondaryScreen extends StatelessWidget {
  const NavigationSecondaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: const Text("You are on the Second Screen, tap to go to Third"),
        onTap: () {
          (context.findAncestorStateOfType<MainScreenManagerState>())
              ?.navigateTo(2);
        },
      ),
    );
  }
}