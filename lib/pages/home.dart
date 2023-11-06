import 'package:flutter/material.dart';
import 'package:nutri_mais/widgets/foods.dart';
import 'package:nutri_mais/widgets/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC7E5A1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Alimentos:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0XFF355211),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0XFF355211),  
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Foods(name: "Hambúrguer", type: "Carboidrato", meal: "Jantar", isMy: false,)
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cardápios:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF355211),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0XFF355211),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFE4FDC5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Menu(breakfast: "2 ovos cozidos", lunch: "Arroz", dinner: "Pizza", isMy: false)
                        ],
                      ),
                    ),
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