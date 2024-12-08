import 'package:apps_ui_clone/apps/whatsApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Whatsapp(),
      routes: {'whatsApp': (context) => const Whatsapp()},
    );
  }
}
