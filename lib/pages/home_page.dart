import 'package:flutter/material.dart';
import 'package:nutri_mais/pages/home.dart';
import 'package:nutri_mais/pages/my_foods.dart';
import 'package:nutri_mais/pages/my_menus.dart';
import 'package:nutri_mais/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = <Widget>[
      Home(),
      MyFoods(),
      MyMenus(),
      Consulta(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF355211),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/credits_page");
              },
              child: Icon(
                Icons.menu,
                color: Color(0XFFC7E5A1),
                size: 45.0,
              ),
            ),
            Image.asset(
              "assets/logo.png",
              width: 135.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/myprofile_page");
              },
              child: Icon(
                Icons.person,
                color: Color(0XFFC7E5A1),
                size: 45.0,
              ),
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF355211),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.coffee),
              icon: Icon(Icons.coffee_outlined),
              label: "Alimentos"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.food_bank),
              icon: Icon(Icons.food_bank_outlined),
              label: "Cardápios"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search),
              icon: Icon(Icons.search_outlined),
              label: "Consulta"),
        ],
      ),
    );
  }
}