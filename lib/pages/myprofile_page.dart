import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  final _formKey = GlobalKey<FormState>();
  final String username = "seu-usuario";
  final String password = "sua-senha";

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newpassordController = TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                    "@$username",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFF355211),
                      fontWeight: FontWeight.bold,
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
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: SizedBox(
                                height: 215,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Altere seu usuário:",
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextFormField(
                                      controller: usernameController,
                                      decoration: InputDecoration(
                                        labelText: "Novo nome de usuário",
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
                                    SizedBox(height: 20,),
                                    Text(
                                      "Sua senha atual:",
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextFormField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: "Senha Atual",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancelar'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (passwordController.text == password) {
                                      if (_formKey.currentState != null ||
                                          _formKey.currentState!.validate()) {
                                        Navigator.pop(context);
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        content: Text('Senha incorreta'),
                                      ));
                                    }
                                  },
                                  child: Text('Salvar Alteração'),
                                ),
                              ],
                            );
                          },
                        );
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
                        "Alterar Usuário",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: SizedBox(
                                height: 215,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Altere sua senha:",
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextFormField(
                                      controller: newpassordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: "Nova senha",
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      "Sua senha atual:",
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextFormField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: "Senha Atual",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancelar'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (passwordController.text == password) {
                                      if (_formKey.currentState != null ||
                                          _formKey.currentState!.validate()) {
                                        Navigator.pop(context);
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        content: Text('Senha incorreta'),
                                      ));
                                    }
                                  },
                                  child: Text('Salvar Alteração'),
                                ),
                              ],
                            );
                          },
                        );
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
                        "Alterar Senha",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: (){
                        
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        "Fazer Logout",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
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