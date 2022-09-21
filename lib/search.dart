import 'package:flutter/material.dart';

void main() {
  runApp(Search());
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YourSearch(),
    );
  }
}

class YourSearch extends StatefulWidget {
  const YourSearch({super.key});

  @override
  State<YourSearch> createState() => _YourSearchState();
}

class _YourSearchState extends State<YourSearch> {
  final List<String> photo = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
  ];
  final List<String> Name = [
    "Impaulsive",
    "TED Talks Daily",
    "Mom’s Basement",
  ];
  final List<String> Subtitle = [
    "334 ep",
    "155 ep",
    "750 ep",
  ];
  final List<Color> renk1 = [
    Color(0xffE02FCF),
    Color(0xff00C188),
  ];
  final List<Color> renk2 = [
    Color(0xff0A3CEC),
    Color(0xff4DD4AC),
  ];
  final List<Color> renk3 = [
    Color(0xff0A3CEC),
    Color(0xffD9DD01),
  ];
  final List<Color> renk4 = [
    Color(0xff0E31AE),
    Color(0xffDD1010),
  ];
  int activepage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnaSayfa(),
                  ),
                ); */
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
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                ); */
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
      body: Container(
        padding: EdgeInsets.only(
          right: 16,
          bottom: 10,
          left: 16,
        ),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 28, 28, 0.5),
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 20),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  cursorHeight: 20,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Artists, Songs or Podcasts",
                    hintStyle: TextStyle(color: Color.fromRGBO(28, 28, 28, 1)),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 110,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "The Kid LAORI",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Drake",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Justin Biber",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Joji",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Hip Hop",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Pop",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Top - Hits",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.bottomLeft,
                /* decoration: BoxDecoration(
                    //color: Colors.grey.shade900,
                    ), */
                child: Text(
                  "Podcast's",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3, left: 3),
                child: Container(
                  height: 200,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: photo.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 100,
                        width: 150,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 0.4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 200,
                              child: Image(
                                image: AssetImage(
                                  photo[index],
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              child: Text(
                                "${Name[index]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Text(
                              "${Subtitle[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Browse all",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: renk1,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        //color: Color.fromRGBO(28, 28, 28, 0.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 20,
                        ),
                        child: Text(
                          "Made For You",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: renk2,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        //color: Color.fromRGBO(28, 28, 28, 0.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 20,
                        ),
                        child: Text(
                          "Charts",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: renk3,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        //color: Color.fromRGBO(28, 28, 28, 0.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 20,
                        ),
                        child: Text(
                          "Discover",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: renk4,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        //color: Color.fromRGBO(28, 28, 28, 0.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 20,
                        ),
                        child: Text(
                          "New Realese",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
