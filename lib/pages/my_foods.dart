import 'package:flutter/material.dart';

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
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFF355211),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: 124,
                                  height: 125,
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
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.create,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                          
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                            
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFF355211),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: 124,
                                  height: 125,
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
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.create,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                              
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                            
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFF355211),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: 124,
                                  height: 125,
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
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.create,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                              
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                            
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFF355211),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                width: 124,
                                height: 125,
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
                                  Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.create,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                              
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                            size: 24.0,
                                          ),
                                          onPressed: () {
                                            
                                          },
                                        ),
                                      ],
                                    )
                                ],
                              ),
                            ),
                          ],
                                                ),
                        ),
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