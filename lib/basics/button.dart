import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ButtonDemo(),
      theme: ThemeData(useMaterial3: true), // Optional: for Material 3 look
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Button Types")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
            ),
            const SizedBox(height: 25),

            Column(
              children:[
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow, // Set background color
                  ),
                onPressed: () {},
                child: const Text(
                    "TextButton"),
              ),]
            ),

            const SizedBox(height: 25),

            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red, width: 2), // Outer border
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // Optional: Rounded corners
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: const Text("OutlinedButton"),
              ),
            ),
            const SizedBox(height: 25),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text("MaterialButton"),
            ),
            const SizedBox(height: 25),

            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("InkWell tapped")),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text("InkWell Button", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
