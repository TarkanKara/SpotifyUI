import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:spotifyiuapp/anasayfa.dart';
import 'package:spotifyiuapp/search.dart';
import 'library.dart';

void main() {
  /* runApp(MyApp()); */
  /* runApp(AnaSayfa()); */
  /* runApp(Library()); */
  runApp(Search());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
