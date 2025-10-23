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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(40),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 20,),
                Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                Text("Enter your ID and password to sign in!" , style: TextStyle(color: Colors.grey),),
          
                SizedBox(height: 50,),
                Text("Email", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                    labelText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                ),
                Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                    labelText:"password" ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                  ),
                )
              ],
            ),
            ),
        ],
      ),
    );
  }
}