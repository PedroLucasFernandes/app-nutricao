import 'package:flutter/material.dart';

class IndicationPage extends StatelessWidget {
  const IndicationPage({super.key});

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
      backgroundColor: Color(0XFFC7E5A1),
      body: SingleChildScrollView(
        child: Column(
          
        ),
      ),
    );
  }
}