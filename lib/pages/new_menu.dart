import 'package:flutter/material.dart';

class NovoCardapio extends StatelessWidget {
  const NovoCardapio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFC7E5A1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Crie seu Cardápio",
              style: TextStyle(
                fontSize: 20,
                color: Color(0XFF355211),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12,),
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
                      height: 110,
                      decoration: BoxDecoration(
                        color: Color(0XFFC7E5A1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Digite aqui...",
                        ),
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
                      height: 110,
                      decoration: BoxDecoration(
                        color: Color(0XFFC7E5A1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Digite aqui...",
                        ),
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
                      height: 110,
                      decoration: BoxDecoration(
                        color: Color(0XFFC7E5A1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Digite aqui...",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12,),
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
    );
  }
}