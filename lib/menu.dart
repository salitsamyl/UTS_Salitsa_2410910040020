import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 150),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))),
                ),
              ),
              Row(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 30, left: 50),
                    child: Image.asset("gambar/Logo.png", width: 80,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 150),
                    child: Text("LKS MART", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.blueGrey),),
                  )
                ],
              )
            ],
          ),

          Padding(padding: EdgeInsetsGeometry.all(40),
          child: Column(
            children: [
              Row(
                text
              )
            ],
          ),)
        ],
      ),
    );
  }
}