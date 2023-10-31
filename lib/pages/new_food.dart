import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class NovoAlimento extends StatefulWidget {
  @override
  _NovoAlimentoState createState() => _NovoAlimentoState();
}

class _NovoAlimentoState extends State<NovoAlimento> {
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

  TextEditingController nomeAlimentoController = TextEditingController();
  TextEditingController categoriaController = TextEditingController();

  final dropValue = ValueNotifier("");
  final dropOptions = ["Café", "Almoço", "Jantar"];

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
                  : Image.file(File(_image!.path)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  TextFormField(
                    controller: nomeAlimentoController,
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
                    controller: categoriaController,
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
                        valueListenable: dropValue,
                        builder: (BuildContext context, String value, _) {
                          return DropdownButton <String>(
                            hint: Text("Refeição"),
                            value: (value.isEmpty) ? null : value,
                            onChanged: (option) => dropValue.value = option.toString(),
                            items: dropOptions
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
                      final nomeAlimento = nomeAlimentoController.text;
                      final categoria = categoriaController.text;
                      final refeicao = dropValue.value;

                      if (nomeAlimento.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Nome do Alimento não pode ser vazio.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (categoria.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Categoria não pode ser vazia.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (refeicao.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Selecione uma Refeição.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else if (refeicao != "Café" && refeicao != "Almoço" && refeicao != "Jantar") {
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