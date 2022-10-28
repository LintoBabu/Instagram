import 'package:flutter/material.dart';
import 'package:instagram_new/post.dart';
import 'package:instagram_new/utils/bubble.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favortie"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts_rounded), label: "Profile"),
        ]),
        appBar: AppBar(
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          titleSpacing: 0.1,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            "images/instagram_logo.png",
            height: 50.0,
            width: 150.0,
            fit: BoxFit.fill,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.messenger,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    bubbles(),
                    bubbles(),
                    bubbles(),
                    bubbles(),
                    bubbles(),
                    bubbles(),
                    bubbles(),
                  ],
                ),
              ),
              post()
            ],
          ),
        ));
  }
}
