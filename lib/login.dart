import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool _pass = true;

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
                    hint: Text("email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                ),
                Text("Password", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  obscureText: _pass,
                  decoration: InputDecoration(
                    hint: Text("Min. 8 characters"),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _pass = !_pass;
                      });
                    }, 
                    icon: Icon(_pass? Icons.remove_red_eye : Icons.visibility_off))
                  ),
                ),
                
                SizedBox(height: 20,),
                Row(
                  spacing: 8,
                  children: [
                    Icon(Icons.check_box_outline_blank),
                    Text("Keep me logged in"),
                  ],
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
                    child: Text("Login", style: TextStyle(color: Colors.white),)),
                  ),
                ),
                
        
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?"),
                    TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/daftar');
                    }, child: Text("Daftar di sini", style: TextStyle(color: Colors.blue),))
                  ],
                )
              ],
            ),
            ),
        ],
      ),
    );
  }
}