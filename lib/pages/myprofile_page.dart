import 'package:flutter/material.dart';
import 'package:nutri_mais/widgets/form_field.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF355211),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0XFFC7E5A1),
            size: 45.0,
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/logo.png",
          width: 135.0,
        ),
      ),
      backgroundColor: Color(0XFFE4FDC5),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text(
                    "Meu Perfil:",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFF355211),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 218,
                    height: 204,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/perfil.png",
                        fit: BoxFit.cover,
                        color: Color(0XFF355211),  
                      ),
                    ),
                  ),
                  Text(
                    "Seu Nome Completo",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFF355211),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 35,),
                  TextFormField(
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
                  SizedBox(height: 30,),
                  TextFormField(
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
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState != null && _formKey.currentState!.validate()) {

                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0XFF355211)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    child: Text(
                      "Salvar Alterações",
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
        ),
      ),
    );
  }
}