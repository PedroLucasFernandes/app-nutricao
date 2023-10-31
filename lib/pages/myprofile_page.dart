import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
      body: Container(
        width: double.infinity,
        color: Color(0XFFE4FDC5),
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