import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  // Added return type 'Widget'
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow)
      ),
      home: const MyHomePage(title: "Basic Screen"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});  // Fixed: Removed the dot after 'required'

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Container(
//           width: double.infinity,
//           color: Colors.red,
//           padding: const EdgeInsets.all(16.0),
//           child: const Column(
//             mainAxisSize: MainAxisSize.min, // 👈 key change!
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                   'Hello World Jayanesh Balakrishnan',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Equivalent to Compose Column { widget1(); widget2(); }
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MyRedBoxWidget(),     // widget1
            SizedBox(height: 16), // spacing between widgets
            MySecondWidget(),     // widget2
          ],
        ),
      ),
    );
  }
}

class MyRedBoxWidget extends StatelessWidget {
  const MyRedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      padding: const EdgeInsets.all(16.0),
      child: const Text(
        'Hello World Jayanesh Balakrishnan',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'I am the second widget!',
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    );
  }
}



// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('How many times the button is clicked:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
