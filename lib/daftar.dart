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
      body: ListView(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(35),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: Column(
                children: [
                  Image.asset("gambar/Logo.png", width: 120,),
                  Text("LKS MART", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 74, 115, 186), fontSize: 40),),
                ],
              ),
            ),
          
            Text("Daftar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Text("Silahkan isi Data Pribadi Anda", style: TextStyle(color: Colors.grey,)),
          
            Text("Nama Lengkap", style: TextStyle(fontWeight: FontWeight.bold),),
            TextField(
              decoration: InputDecoration(
                hint: Text("Nama Lengkap", style: TextStyle(color: Colors.grey),),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
            ),
          
            Text("Alamat", style: TextStyle(fontWeight: FontWeight.bold),),
            TextField(
              decoration: InputDecoration(
                hint: Text("Alamat", style: TextStyle(color: Colors.grey),),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
            ),
          
            Text("Username", style: TextStyle(fontWeight: FontWeight.bold),),
            TextField(
              decoration: InputDecoration(
                hint: Text("username", style: TextStyle(color: Colors.grey),),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
            ),
          
            Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hint: Text("Min. 8 characters", style: TextStyle(color: Colors.grey),),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
            ),
          
            Text("Konfirmasi Password", style: TextStyle(fontWeight: FontWeight.bold),),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hint: Text("Min. 8 characters", style: TextStyle(color: Colors.grey),),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
            ),
            Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton (onPressed:(){
                    Navigator.pushNamed(context, '/menu');
                    } , 
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 67, 94, 116), // warna biru tua seperti di gambar
                        iconSize: 20,
                    ),
                    child: Text("Daftar", style: TextStyle(color: Colors.white),)),
                  ),
                ),
                
        
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?"),
                    TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/');
                    }, child: Text("Login di sini", style: TextStyle(color: Colors.blue),)),
                  ],
              ),
            ],
          ),
          ),
        ],
      ),

    );
  }
}