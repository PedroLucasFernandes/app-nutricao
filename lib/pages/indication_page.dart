import 'package:flutter/material.dart';
import 'package:nutri_mais/widgets/indication.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Indicações para seu cardápio",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF355211),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Container(
                  width: 400,
                  height: 500,
                  decoration: BoxDecoration(
                  color: Color(0XFFE4FDC5),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Indication(tittle: "Opção de Café 1", content: "2 copos de iogurte e 1 maçã"),
                        Indication(tittle: "Opção de Café 2", content: "teste 2"),                      
                        Indication(tittle: "Opção de Café 3", content: "teste 3"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}