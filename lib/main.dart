import 'package:flutter/material.dart';
import 'package:nutri_mais/pages/home_page.dart';
import 'package:nutri_mais/pages/signup_page.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/homepage",
      routes: {
        "/signup_page" : (context) => SignupPage(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}