import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,

        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Seja bem-vindo(a)!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              child:
                Text(
                  "Novo Usuário",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              onPressed: () {
                Navigator.of(context).pushNamed("/signup_page");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0XFFFC1FF72)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child:
                Text(
                  "Já tem uma conta?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              onPressed: () {
                Navigator.of(context).pushNamed("/login_page");
              },
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.2)),
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}