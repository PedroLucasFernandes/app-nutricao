import 'package:flutter/material.dart';
import 'package:nutri_mais/widgets/foods.dart';

class MyFoods extends StatefulWidget {
  const MyFoods({super.key});

  @override
  State<MyFoods> createState() => _MyFoodsState();
}

class _MyFoodsState extends State<MyFoods> {
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
                "Meus Alimentos",
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
                        Foods(name: "Tomate", type: "Fruta", meal: "Almoço"),
                        SizedBox(height: 8,),
                        Foods(name: "Pizza", type: "Carboidrato", meal: "Jantar"),
                        SizedBox(height: 8,),
                        Foods(name: "Banana", type: "Fruta", meal: "Café"),
                        SizedBox(height: 8,),
                        Foods(name: "Laranja", type: "Fruta", meal: "Café"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(context, "/new_food");
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
                  "Cadastre um novo alimento",
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