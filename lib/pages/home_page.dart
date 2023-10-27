import 'package:flutter/material.dart';
import 'package:nutri_mais/pages/home.dart';
import 'package:nutri_mais/pages/new_food.dart';
import 'package:nutri_mais/pages/new_menu.dart';
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
    const List pages = <Widget>[
      Home(),
      NovoCardapio(),
      NovoAlimento(),
      Consulta(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF355211),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 45.0,
            ),
            Image.asset(
              "assets/logo.png",
              width: 135.0,
            ),
            Image.asset(
              "assets/perfil.png",
              width: 50.0,
            )
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
              activeIcon: Icon(Icons.food_bank),
              icon: Icon(Icons.food_bank_outlined),
              label: "Cardápios"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.emoji_food_beverage),
              icon: Icon(Icons.emoji_food_beverage_outlined),
              label: "Alimentos"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search),
              icon: Icon(Icons.search_outlined),
              label: "Consulta"),
        ],
      ),
    );
  }
}