import 'package:flutter/material.dart';
import 'package:nutri_mais/pages/credits_page.dart';
import 'package:nutri_mais/pages/first_page.dart';
import 'package:nutri_mais/pages/home.dart';
import 'package:nutri_mais/pages/home_page.dart';
import 'package:nutri_mais/pages/login_page.dart';
import 'package:nutri_mais/pages/myprofile_page.dart';
import 'package:nutri_mais/pages/new_food.dart';
import 'package:nutri_mais/pages/new_menu.dart';
import 'package:nutri_mais/pages/search.dart';
import 'package:nutri_mais/pages/signup_page.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/first_page",
      routes: {
        "/signup_page" : (context) => SignupPage(),
        "/login_page" : (context) => LoginPage(),
        "/home_page" : (context) => HomePage(),
        "/new_menu" : (context) => NovoCardapio(),
        "/new_food" : (context) => NovoAlimento(),
        "/search" : (context) => Consulta(),
        "/credits_page" : (context) => CreditsPage(),
        "/myprofile_page" :(context) => MyProfile(),
      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}