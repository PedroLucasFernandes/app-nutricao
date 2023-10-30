import 'package:flutter/material.dart';
import 'package:nutri_mais/pages/home_page.dart';

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
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFE4FDC5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: 124,
                            height: 151,
                          ),
                        ),
                        Container(
                          height: 151,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "Nome: Hambúrguer",
                              ),
                              Text(
                                "Categoria: Carboidrato",
                              ),
                              Text(
                                "Refeição: Janta",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                          Text(
                            "Café:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF355211),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFFC7E5A1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(height: 12,),
                          Text(
                            "Almoço:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF355211),
                            ),  
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFFC7E5A1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(height: 12,),
                          Text(
                            "Jantar:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF355211),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFFC7E5A1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
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