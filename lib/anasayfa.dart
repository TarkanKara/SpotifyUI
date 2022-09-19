import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(AnaSayfa());
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfaPage(),
    );
  }
}

class AnaSayfaPage extends StatefulWidget {
  const AnaSayfaPage({super.key});

  @override
  State<AnaSayfaPage> createState() => _AnaSayfaPageState();
}

class _AnaSayfaPageState extends State<AnaSayfaPage> {
  int activepage = 0;
  final List<String> resimler = [
    "assets/images/anasayfa1.png",
    "assets/images/anasayfa2.png",
  ];

  final List<String> subtext = [
    "30 Fresh music for you every week",
    "New songs every friday ",
  ];

  final List<String> resimler2 = [
    "assets/images/Mixes1.png",
    "assets/images/Mixes2.png",
    "assets/images/Mixes3.png",
  ];

  final List<String> text = [
    "Hip Hop Mix",
    "Moody Mix",
    "House Mix",
  ];
  final List<String> subtext2 = [
    "Juice Wrld, Drake, Kendrick lamar and more... ",
    "Joji, The Kid LAROI, Tate McRae and more...",
    "Martin Garrix, The Chainsmoker and more...",
  ];
  final List<String> resimler3 = [
    "assets/images/Avatar1.png",
    "assets/images/Avatar2.png",
    "assets/images/Avatar3.png",
  ];
  final List<String> names = [
    "The Kid LAROI",
    "Taylor Swift",
    "Post Malone",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.more_vert,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/icon.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                          text: "Weekly ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                          children: const <TextSpan>[
                            TextSpan(
                                text: "Music",
                                style: TextStyle(color: Colors.white)),
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: resimler.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 270,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 250,
                            child: Image(
                              image: AssetImage(resimler[index]),
                              fit: BoxFit.contain,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${subtext[index]}",
                            style: TextStyle(
                              color: Color(0xffDADADA),
                              fontSize: 12,
                              /* fontWeight: FontWeight.bold, */
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Container(
                child: Text(
                  "Your Top Mixes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 233,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: resimler2.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 195,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(28, 28, 28, 0.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 15, right: 15, bottom: 20, top: 20),
                            child: Image(
                              image: AssetImage(
                                resimler2[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "${text[index]}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "${subtext2[index]}",
                              style: TextStyle(
                                  color: Color(0xffDADADA), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Suggested artists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 195,
                width: 500,
                decoration: BoxDecoration(color: Colors.black),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 195,
                      width: 155,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(28, 28, 28, 0.5),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: (62),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                resimler3[index],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${names[index]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        height: 80,
        decoration: BoxDecoration(color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  activepage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: activepage == 0 ? Colors.green : Colors.white,
                size: 35,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  activepage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: activepage == 1 ? Colors.green : Colors.white,
                size: 35,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  activepage = 2;
                });
              },
              icon: Icon(
                Icons.library_books_outlined,
                color: activepage == 2 ? Colors.green : Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
