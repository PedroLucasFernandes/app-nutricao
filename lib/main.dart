import 'package:flutter/material.dart';
import 'package:nutri_mais/pages/credits_page.dart';
import 'package:nutri_mais/pages/first_page.dart';
import 'package:nutri_mais/pages/home_page.dart';
import 'package:nutri_mais/pages/indication_page.dart';
import 'package:nutri_mais/pages/login_page.dart';
import 'package:nutri_mais/pages/my_foods.dart';
import 'package:nutri_mais/pages/my_menus.dart';
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
        "/first_page" : (context) => FirstPage(),
        "/signup_page" : (context) => SignupPage(),
        "/login_page" : (context) => LoginPage(),
        "/home_page" : (context) => HomePage(),
        "/my_foods" : (context) => MyFoods(),
        "/new_food" : (context) => NewFood(),
        "/my_menus" : (context) => MyMenus(),
        "/new_menu" : (context) => NewMenu(),
        "/indication_page" : (context) => IndicationPage(),
        "/search" : (context) => Consulta(),
        "/credits_page" : (context) => CreditsPage(),
        "/myprofile_page" : (context) => MyProfile(),
      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}