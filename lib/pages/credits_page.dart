import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsPage extends StatelessWidget {
  CreditsPage({super.key});

  final Uri githubUrl = Uri.parse('https://github.com/PedroLucasFernandes');
  final Uri linkedinUrl = Uri.parse('https://www.linkedin.com/in/pedro-fernandes-ferreira-14b1561a1/');

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70.0,
                vertical: 15.0
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0XFF355211), width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () async {           
                    try {
                      await launchUrl(githubUrl);
                    } catch(e) {
                      
                    }
                  },
                  style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/github.png",
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 25,),
                      Text(
                        "My GitHub",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0XFF355211), width: 3.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () async {  
                    try {
                      await launchUrl(linkedinUrl);
                    } catch(e) {
                      
                    }
                  },
                  style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/linkedin.png",
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 25,),
                      Text(
                        "My LinkedIn",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF047CB4),
                        ),
                      ),
                    ],
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