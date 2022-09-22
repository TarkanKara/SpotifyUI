import 'package:flutter/material.dart';
import 'package:spotifyiuapp/tophits_music.dart';

class YourTopHits extends StatefulWidget {
  const YourTopHits({super.key});

  @override
  State<YourTopHits> createState() => _YourTopHitsState();
}

class _YourTopHitsState extends State<YourTopHits> {
  final List<String> playimage = [
    "assets/images/playimage1.png",
    "assets/images/playimage2.png",
    "assets/images/playimage3.png",
    "assets/images/playimage4.png",
  ];
  final List<String> playtitle = [
    "STAY",
    "Wishing Well",
    "First Class",
    "Unstable",
  ];
  final List<String> playSubtitle = [
    "The Kid LAROI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kid LAROI",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 425,
            //color: Colors.blue,
            child: Stack(
              children: [
                Container(
                  height: 378,
                  width: 396,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                    ),
                    //shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/images/icon5.png",
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/icon6.png",
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/icon7.png",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 135,
                  left: 45,
                  child: Text(
                    "TODAY’S",
                    style: TextStyle(
                        fontFamily: "Tourney",
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Positioned(
                  bottom: 80,
                  left: 40,
                  child: Text(
                    "TOP HITS",
                    style: TextStyle(
                        //fontFamily: "Tourney",
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Positioned(
                  top: 335,
                  left: 10,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/icon8.png"),
                          ),
                          Text(
                            "357,828 likes",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/icon9.png"),
                          ),
                          Text(
                            "2hr 40min",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 01,
                  left: 20,
                  child: Text(
                    "Featuring",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => topHits_Music()),
                        ),
                      );
                    },
                    icon: Image.asset("assets/images/play.png"),
                    iconSize: 70,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 350,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: playimage.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            playimage[index],
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 25,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.play_circle_fill_outlined),
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${playtitle[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${playSubtitle[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
