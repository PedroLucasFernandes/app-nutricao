import 'package:flutter/material.dart';
import '../widgets/form_field.dart';

class NovoCardapio extends StatefulWidget {
  const NovoCardapio({super.key});

  @override
  _NovoCardapioState createState() => _NovoCardapioState();
}

class _NovoCardapioState extends State<NovoCardapio> {
  final breakfastController = TextEditingController();
  final lunchController = TextEditingController();
  final dinnerController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC7E5A1),
      body: SingleChildScrollView(
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
                  borderRadius: BorderRadius.circular(22),
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MyFormField(controller: breakfastController, labelText: "Digite Aqui", maxLines: 4,),
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MyFormField(controller: lunchController, labelText: "Digite Aqui", maxLines: 4,),
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MyFormField(controller: dinnerController, labelText: "Digite Aqui", maxLines: 4,),
                      ),
                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              ElevatedButton(
                onPressed: () {
                      final breakfast = breakfastController.text;
                      final lunch = lunchController.text;
                      final dinner = dinnerController.text;

                      if (breakfast.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Café não pode estar vazio.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (lunch.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Almoço não pode estar vazio.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (dinner.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Jantar não pode estar vazio.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else {

                      }
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
      ),
    );
  }
}