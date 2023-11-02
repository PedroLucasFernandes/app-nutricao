import 'package:flutter/material.dart';

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
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFF355211),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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