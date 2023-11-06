import 'package:flutter/material.dart';
import 'package:nutri_mais/widgets/menu.dart';

class MyMenus extends StatefulWidget {
  const MyMenus({super.key});

  @override
  State<MyMenus> createState() => _MyMenusState();
}

class _MyMenusState extends State<MyMenus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC7E5A1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text(
                  "Meus Cardápios",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0XFF355211),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: 8,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFE4FDC5),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 450,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Menu(
                          breakfast: "2 ovos cozidos",
                          lunch: "200 gramas de arroz e 150 de frango",
                          dinner: "3 ovos com 100 gramas de arroz",
                          isMy: true,
                        ),
                        SizedBox(height: 8,),
                        Menu(
                          breakfast: "1 copo de café e 1 pão com queijo",
                          lunch: "200 gramas de arroz, 100 de feijão e 2 linguiças",
                          dinner: "100 gramas de carne com 150 gramas de arroz",
                          isMy: true,
                        ),
                        SizedBox(height: 8,),
                        Menu(
                          breakfast: "2 pão com presunto e queijo",
                          lunch: "2 pedaços de torta de frango com 3 conchas de feijão e 150 gramas de arroz",
                          dinner: "2 ovos cozidos",
                          isMy: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(context, "/new_menu");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0XFF355211)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text(
                  "Cadastre um novo cardápio",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}