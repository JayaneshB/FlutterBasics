import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TextField Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TextFieldDemoScreen(),
    );
  }
}

class TextFieldDemoScreen extends StatefulWidget {
  const TextFieldDemoScreen({super.key});

  @override
  State<TextFieldDemoScreen> createState() => _TextFieldDemoScreenState();
}

class _TextFieldDemoScreenState extends State<TextFieldDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField Types")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("🔹 Basic TextField"),
            const TextField(
              decoration: InputDecoration(hintText: "Enter text"),
            ),
            const SizedBox(height: 40),

            const Text("🔹 Outlined TextField"),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                isDense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ), // Unfocused border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ), // Focused border color
                ),
              ),
            ),
            const SizedBox(height: 40),

            const Text("🔹 Multiline TextField"),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Enter your message",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
