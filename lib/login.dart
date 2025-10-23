import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 20),
              child: Row(
                children: [
                  Positioned(
                    child: Image.asset("gambar/Logo.png", width: 140,)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("LKS", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 74, 115, 186), fontSize: 45), ),
                        Text("MART", style: TextStyle(fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 74, 115, 186), fontSize: 45), ),
                      ],
                    )
                ],
              ),
            ),

            Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
        ),
    );
  }
}