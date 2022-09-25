import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyiuapp/getStarted.dart';

class StartupOne extends StatefulWidget {
  const StartupOne({super.key});

  @override
  State<StartupOne> createState() => _StartupOneState();
}

class _StartupOneState extends State<StartupOne> {
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GetStarted(),
                    ),
                  );
                },
                child: Container(
                  height: 180,
                  width: 180,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/started.png"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
