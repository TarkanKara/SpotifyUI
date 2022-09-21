import 'package:flutter/material.dart';
import 'package:spotifyiuapp/anasayfa.dart';
import 'package:spotifyiuapp/search.dart';
import 'package:spotifyiuapp/tophits.dart';
import 'library.dart';
import 'dart:ui';

void main() {
  /* runApp(MyApp()); */
  /* runApp(AnaSayfa()); */
  /* runApp(Search()); */
  /* runApp(Library()); */
  runApp(topHits());
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
