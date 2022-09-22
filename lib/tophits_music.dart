import 'package:flutter/material.dart';

class topHits_Music extends StatefulWidget {
  const topHits_Music({super.key});

  @override
  State<topHits_Music> createState() => _topHits_MusicState();
}

class _topHits_MusicState extends State<topHits_Music> {
  double _value = 0;
  final List<String> topHitsMusic = [
    "assets/images/music1.png",
    "assets/images/music2.png",
    "assets/images/music3.png",
  ];
  final List<String> topHitsMusic_title = [
    "STAY",
    "First Class",
    "Wishing Well",
  ];
  final List<String> topHitsMusic_subtitle = [
    "Juice WLRD",
    "Jack Harlow",
    "Juice WLRD",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Image.asset("assets/images/icon10.png"),
                  ),
                  Text(
                    "Today’s Top Hits",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/icon7.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 380,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topHitsMusic.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 290,
                    width: 290,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(topHitsMusic[index]),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${topHitsMusic_title[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${topHitsMusic_subtitle[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
              child: Slider(
                min: 0.0,
                max: 2.53,
                activeColor: Colors.green,
                inactiveColor: Colors.white,
                value: _value,
                onChanged: (value) {
                  setState(
                    () {
                      _value = value;
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0.22",
                  style: TextStyle(
                    color: Colors.white38,
                  ),
                ),
                Text(
                  "2.53",
                  style: TextStyle(
                    color: Colors.white38,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 37,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon1.png"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon2.png"),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/playicon3.png"),
                  iconSize: 60,
                ),
                SizedBox(
                  height: 40,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon4.png"),
                  ),
                ),
                SizedBox(
                  height: 37,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon5.png"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                  child: Image.asset("assets/images/bluetooth.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Airpods Pro",
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 55,
              //width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(28, 28, 28, 0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/icon6.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon6.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon7.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/playicon8.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
