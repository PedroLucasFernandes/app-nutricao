import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:nutri_mais/pages/home_page.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _dateController = TextEditingController();
  final _dateMaskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
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
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Color(0XFFC7E5A1),
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
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Nome de Usuário",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
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
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Seu nome completo",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              controller: _dateController,
              inputFormatters: [_dateMaskFormatter],
              decoration: InputDecoration(
                labelText: "Sua data de nascimento (DD/MM/AAAA)",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
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
                    Image.asset(
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
              onPressed: () {
              
              }
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.pushNamed(context, "/home_page");
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
    );
  }
}