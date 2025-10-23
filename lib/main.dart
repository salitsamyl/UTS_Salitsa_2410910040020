import 'package:flutter/material.dart';
import 'package:uts_salitsa_2410910040020/login.dart';
import 'package:uts_salitsa_2410910040020/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
      "/menu" :(context)=>Menu(),
      },
      initialRoute: "/",

      //home:Login() ,
  
    );
  }
}