import 'package:flutter/material.dart';
//import 'package:spotify_ui/main.dart';

void main() {
  runApp(Library());
}

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YourLibrary(),
    );
  }
}

class YourLibrary extends StatefulWidget {
  const YourLibrary({super.key});

  @override
  State<YourLibrary> createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  final List<String> yourlibrary = [
    "assets/images/library1.png",
    "assets/images/library2.png",
    "assets/images/library3.png",
    "assets/images/library4.png",
  ];
  final List<String> yourlibrary2 = [
    "assets/images/library5.png",
    "assets/images/library6.png",
    "assets/images/library7.png",
    "assets/images/library8.png",
  ];
  final List<String> yourlibrary3 = [
    "assets/images/library9.png",
    "assets/images/library10.png",
    "assets/images/library11.png",
    "assets/images/library12.png",
  ];
  final List<String> yourlibrary4 = [
    "assets/images/library13.png",
    "assets/images/library14.png",
    "assets/images/library15.png",
    "assets/images/library16.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "Your Library",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        iconSize: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/iconn.png"),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 181,
                    width: 163,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 28, 28, 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 132,
                            height: 114,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 57,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Image(
                                        image: AssetImage(yourlibrary[0]),
                                      ),
                                    ),
                                    Container(
                                      width: 66,
                                      height: 57,
                                      child: Image(
                                        image: AssetImage(yourlibrary[1]),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 57,
                                      child: Image(
                                        image: AssetImage(yourlibrary[2]),
                                      ),
                                    ),
                                    Container(
                                      width: 66,
                                      height: 57,
                                      child: Image(
                                        image: AssetImage(yourlibrary[3]),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 130,
                            child: Text(
                              "Playlists #1",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 181,
                    width: 163,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 28, 28, 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 132,
                          height: 114,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary2[0]),
                                    ),
                                  ),
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary2[1]),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary2[2]),
                                    ),
                                  ),
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary2[3]),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 130,
                          child: Text(
                            "Playlists #2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 181,
                    width: 163,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 28, 28, 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 132,
                            height: 114,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 57,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Image(
                                        image: AssetImage(yourlibrary3[0]),
                                      ),
                                    ),
                                    Container(
                                      width: 66,
                                      height: 57,
                                      child: Image(
                                        image: AssetImage(yourlibrary3[1]),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 57,
                                      child: Image(
                                        image: AssetImage(yourlibrary3[2]),
                                      ),
                                    ),
                                    Container(
                                      width: 66,
                                      height: 57,
                                      child: Image(
                                        image: AssetImage(yourlibrary3[3]),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 130,
                            child: Text(
                              "Playlists #3",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 181,
                    width: 163,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 28, 28, 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 132,
                          height: 114,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary4[0]),
                                    ),
                                  ),
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary4[1]),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary4[2]),
                                    ),
                                  ),
                                  Container(
                                    width: 66,
                                    height: 57,
                                    child: Image(
                                      image: AssetImage(yourlibrary4[3]),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 130,
                          child: Text(
                            "Playlists #4",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your Activities",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/icon1.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Liked Songs",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/icon2.png"),
                  ),
                ],
              ),
              Divider(
                thickness: 0.1,
                color: Colors.white30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/icon3.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Liked Songs",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/icon2.png"),
                  ),
                ],
              ),
              Divider(
                thickness: 0.1,
                color: Colors.white30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/icon4.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Liked Songs",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/icon2.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
