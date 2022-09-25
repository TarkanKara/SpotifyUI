import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartupTwo extends StatefulWidget {
  const StartupTwo({super.key});

  @override
  State<StartupTwo> createState() => _StartupTwoState();
}

class _StartupTwoState extends State<StartupTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 180,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/started2.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
