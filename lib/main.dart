import 'package:spotifyiuapp/login.dart';
import 'package:spotifyiuapp/navigationScreen.dart';
import 'package:spotifyiuapp/tophits_music.dart';
import 'package:spotifyiuapp/homepage.dart';
import 'package:spotifyiuapp/tophits.dart';
import 'package:spotifyiuapp/search.dart';
import 'package:flutter/material.dart';
import 'library.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginn(),
    );
  }
}
