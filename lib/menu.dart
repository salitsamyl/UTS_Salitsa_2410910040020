import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> Items=[
    {
      "kode_produk":"PRD-001",
      "deskripsi":"Good Day Freeze",
      "harga":15000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/001.jpg"
    },
    {
      "kode_produk":"PRD-002",
      "deskripsi":"Kapal Api",
      "harga":20000,
      "stok":6,
      "rating":4.7,
      "gambar":"gambar/002.jpg"
    },
    {
      "kode_produk":"PRD-003",
      "deskripsi":"Torabika Coffee",
      "harga":21000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/003.jpg"
    },
    {
      "kode_produk":"PRD-004",
      "deskripsi":"Pikopi ",
      "harga":13000,
      "stok":5,
      "rating":4.4,
      "gambar":"gambar/004.jpg"
    },
  ];


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
                children: [
                  Text("Produk", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 25),)
                ],
              )
            ],
          ),)
        ],
      ),
    );
  }
}