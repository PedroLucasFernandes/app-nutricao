import 'package:flutter/material.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF355211),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Color(0XFFC7E5A1),
                size: 45.0,
              ),
            ),
            Image.asset(
              "assets/logo.png",
              width: 135.0,
            ),
            Image.asset(
              "assets/perfil.png",
              width: 50.0,
              color: Color(0XFFC1FF72),
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Color(0XFFE4FDC5),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(
              "Desenvolvido por:",
              style: TextStyle(
                fontSize: 20,
                color: Color(0XFF355211),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 75,),
            Container(
              width: 218,
              height: 204,
              child: ClipOval(
                child: Image.asset(
                  "assets/myimage.jpeg",
                  fit: BoxFit.cover,  
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Pedro Fernandes Ferreira",
              style: TextStyle(
                fontSize: 20,
                color: Color(0XFF355211),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}