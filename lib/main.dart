import 'package:flutter/material.dart';

void main() => runApp(const WidgetSandboxApp());

class WidgetSandboxApp extends StatelessWidget {
  const WidgetSandboxApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Widget Sandbox",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(),
      );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Widget Sandbox"),
        ),
        body: const Placeholder(),
      );
}
