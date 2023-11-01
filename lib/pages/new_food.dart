import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class NewFood extends StatefulWidget {
  @override
  _NewFoodState createState() => _NewFoodState();
}

class _NewFoodState extends State<NewFood> {
  XFile? _image;

  Future _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
    }
  }

  TextEditingController foodNameController= TextEditingController();
  TextEditingController typeController = TextEditingController();

  final typedropValue = ValueNotifier("");
  final typeDropOptions = ["Bebida", "Proteína", "Carboidrato", "Fruta", "Grão"];
  final mealdropValue = ValueNotifier("");
  final mealDropOptions = ["Café", "Almoço", "Jantar"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC7E5A1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "Cadastro de Alimentos",
              style: TextStyle(
                fontSize: 20,
                color: Color(0XFF355211),
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () => _getImage(),
              borderRadius: BorderRadius.circular(12),
              child: _image == null
                  ? Image.asset(
                    "assets/addimg.png",
                    width: 193,
                    height: 198,
                    )
                  : Image.file(
                    File(_image!.path),
                    width: 193,
                    height: 198,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  TextFormField(
                    controller: foodNameController,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tipo:",
                        style: TextStyle(
                        color: Color(0XFF478000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 75,),
                      ValueListenableBuilder(
                        valueListenable: typedropValue,
                        builder: (BuildContext context, String value, _) {
                          return DropdownButton <String>(
                            hint: Text("Tipo"),
                            value: (value.isEmpty) ? null : value,
                            onChanged: (option) => typedropValue.value = option.toString(),
                            items: typeDropOptions
                            .map((op) => DropdownMenuItem(
                                  child: Text(op),
                                  value: op,
                                ))
                            .toList(),
                          );
                        }
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Refeição:",
                        style: TextStyle(
                        color: Color(0XFF478000),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 35,),
                      ValueListenableBuilder(
                        valueListenable: mealdropValue,
                        builder: (BuildContext context, String value, _) {
                          return DropdownButton <String>(
                            hint: Text("Refeição"),
                            value: (value.isEmpty) ? null : value,
                            onChanged: (option) => mealdropValue.value = option.toString(),
                            items: mealDropOptions
                            .map((op) => DropdownMenuItem(
                                  child: Text(op),
                                  value: op,
                                ))
                            .toList(),
                          );
                        }
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final foodname = foodNameController.text;
                      final type = typedropValue.value;
                      final meal = mealdropValue.value;

                      if (foodname.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Nome do Alimento não pode ser vazio.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (type.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selecione um Tipo.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (type != "Bebida" && type != "Proteína" && type != "Grão" && type != "Carboidrato" && type != "Fruta") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Tipo deve ser Bebida, Proteína, Grão, Carboidrato ou Fruta.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (meal.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selecione uma Refeição.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (meal != "Café" && meal != "Almoço" && meal != "Jantar") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Refeição deve ser Café, Almoço ou Jantar.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (_image == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selecione uma imagem do alimento'),
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
          ],
        ),
      ),
    );
  }
}