import 'package:flutter/material.dart';

class NovoAlimento extends StatelessWidget {
  const NovoAlimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFC7E5A1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Cadastro de Alimentos",
            style: TextStyle(
              fontSize: 20,
              color: Color(0XFF355211),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 193,
            height: 198,
            child: Image.asset("assets/addimg.png")
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Nome do Alimento",
                    labelStyle: TextStyle(
                      color: Color(0XFF478000),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Categoria",
                    labelStyle: TextStyle(
                      color: Color(0XFF478000),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Refeição",
                    labelStyle: TextStyle(
                      color: Color(0XFF478000),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                  
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
                    "Cadastrar",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}