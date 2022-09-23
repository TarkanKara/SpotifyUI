import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotifyiuapp/navigationScreen.dart';

class loginn extends StatefulWidget {
  const loginn({super.key});

  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  bool isPasswordVisible = false;
  bool isIconVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            right: -160,
            bottom: 350,
            child: Container(
              height: 719,
              width: 684,
              decoration: BoxDecoration(
                color: Color(0xff1ED760),
                borderRadius: BorderRadius.all(
                  Radius.circular(1000),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 700,
              width: 350,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/spotifylogo.png"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "MIllions of songs, free on spotify",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(30),
                    height: 465,
                    width: 342,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login Account",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          height: 45,
                          child: TextField(
                            cursorColor: Colors.green,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              hintText: "Email or username",
                              hintStyle: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              suffixIcon: IconButton(
                                color: Colors.green,
                                onPressed: () {},
                                icon: Icon(Icons.mail_outline),
                                iconSize: 30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          height: 45,
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter
                                  .digitsOnly //klavyeden harf yasağı
                            ],
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.green,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              suffixIcon: IconButton(
                                color: Colors.green,
                                icon: isPasswordVisible
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                iconSize: 30,
                              ),
                            ),
                            obscureText: isPasswordVisible,
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: Color.fromRGBO(28, 28, 28, 0.5),
                                fontSize: 14,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isIconVisible = !isIconVisible;
                                });
                              },
                              icon: isIconVisible
                                  ? Icon(Icons.toggle_on_sharp)
                                  : Icon(Icons.toggle_off_outlined),
                              iconSize: 35,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigationScreen(),
                                ));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff1ED760),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Text(
                              "LOG IN",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Color.fromRGBO(0, 0, 0, 0.29),
                              child: SizedBox(
                                height: 1,
                                width: 110,
                              ),
                            ),
                            Text(
                              "or",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.29),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(0, 0, 0, 0.29),
                              child: SizedBox(
                                height: 1,
                                width: 110,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                print("google"); //Debug Consele
                              },
                              child: CircleAvatar(
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/images/google.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                print("facebook"); //Debug Consele
                              },
                              child: CircleAvatar(
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/images/facebook.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            print("Forget password?"); //Debug Consele
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Forget password?",
                                style: TextStyle(
                                  color: Color(0xffDADADA),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        "Sign up now",
                        style: TextStyle(
                          color: Color.fromRGBO(30, 215, 96, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
