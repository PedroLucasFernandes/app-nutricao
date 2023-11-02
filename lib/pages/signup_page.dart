import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:nutri_mais/database_helper.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  final TextEditingController _photoController = TextEditingController();

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _birthdateController = TextEditingController();
  final _dateMaskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final _formKey = GlobalKey<FormState>();

  XFile? _pickedImage;

  @override
  void dispose() {
    _birthdateController.dispose();
    super.dispose();
  }

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFC7E5A1),
        title: Text(
          "Cadastro de novo usuário",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () {
          Navigator.of(context).pop();
        },
        ),
      ),
      backgroundColor: Color(0XFFC7E5A1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                child: Text(
                  "Nome de usuário e senha:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Nome de Usuário",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'O nome de usuário não pode ser vazio';
                  }
                  if (value.length > 24) {
                    return 'O nome de usuário deve conter no máximo 24 caracteres';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'A senha deve conter entre 8 e 24 caracteres';
                  }
                  if (value.length < 8 || value.length > 24) {
                    return 'A senha deve conter entre 8 e 24 caracteres';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  "Informações para o perfil:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Seu nome completo",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Seu nome não pode ser vazio';
                  }
                  if (value.contains(RegExp(r'[0-9]'))) {
                    return 'Seu nome não pode conter números';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _birthdateController,
                keyboardType: TextInputType.datetime,
                inputFormatters: [_dateMaskFormatter],
                decoration: InputDecoration(
                  labelText: "Sua data de nascimento (DD/MM/AAAA)",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira sua data de nascimento no formato DD/MM/AAAA';
                  }
      
                  final datePattern = r'^\d{2}/\d{2}/\d{4}$';
      
                  if (!RegExp(datePattern).hasMatch(value)) {
                    return 'Formato de data inválido. Use DD/MM/AAAA';
                  }
      
                  final parts = value.split('/');
      
                  final day = int.tryParse(parts[0]);
                  final month = int.tryParse(parts[1]);
                  final year = int.tryParse(parts[2]);
      
                  if (day == null || month == null || year == null) {
                    return 'Data inválida';
                  }
      
                  if (day < 1 || day > 31 || month < 1 || month > 12 || year < 1900 || year > 2100) {
                    return 'Data fora dos limites válidos';
                  }
      
                  return null;
                },
              ),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0XFFFC1FF72))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      _pickedImage != null
                          ? Image.file(
                              File(_pickedImage!.path),
                              height: 24,
                              width: 24,
                            )
                          : Image.asset(
                              'assets/perfil.png',
                              height: 24,
                              width: 24,
                            ),
                      SizedBox(width: 8),
                    ],
                  ),
                  Text(
                    "Sua foto (será usada no perfil)",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 32),
                ],
              ),
                onPressed: () async {
                final picker = ImagePicker();
                final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      
                if (pickedFile != null) {
                  setState(() {
                    _pickedImage = pickedFile;
                  });
                }
              },
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                    if (_pickedImage != null) {
                      await _insereRegistroUsers();
                      Navigator.pushNamed(context, "/home_page");
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Selecione uma imagem de perfil'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0XFF478000)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: Text(
                  "Continuar",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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

  // Future<void> _insereRegistroUsers() async {
  //   await Database.insereRegistroUsers(
  //       _nameController.text, _usernameController.text, _passwordController.text, _birthdateController.datetime, _photoController.text);
  // }
}
