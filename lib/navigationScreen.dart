import 'package:flutter/material.dart';
import 'package:spotifyiuapp/homepage.dart';
import 'package:spotifyiuapp/search.dart';
import 'library.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: changePage(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            changePage();
            //print(_currentIndex);
          },
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  changePage();
                  //print(_currentIndex);
                },
                icon: Image.asset(
                  "assets/images/home.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  changePage();
                  //print(_currentIndex);
                },
                icon: Image.asset(
                  "assets/images/search.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  changePage();
                  //print(_currentIndex);
                },
                icon: Image.asset(
                  "assets/images/libraryicon.png",
                ),
              ),
              label: "",
            ),
          ]),
    );
  }

  Widget changePage() {
    switch (_currentIndex) {
      case 0:
        return AnaSayfaPage();
        break;
      case 1:
        return YourSearch();
        break;
      case 2:
        return YourLibrary();
        break;
      default:
        return Container();
    }
  }
}
