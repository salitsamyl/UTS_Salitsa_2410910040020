import 'package:flutter/material.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [
        Center(
          child: Column(
            children: [
              Image.asset("gambar/Logo.png", width: 120,),
              Text("LKS MART", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 74, 115, 186), fontSize: 45),),
            ],
          ),
        ),
        ],
      ),
      ),

    );
  }
}