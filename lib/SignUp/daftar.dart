import 'package:cpp_course/Login/login.dart';
import 'package:cpp_course/components/my_button.dart';
import 'package:cpp_course/components/my_textfield.dart';
import 'package:flutter/material.dart';

class halamanDaftar extends StatefulWidget {
  const halamanDaftar({super.key});

  @override
  State<halamanDaftar> createState() => _halamanDaftarState();
}

void userDaftar() {}

class _halamanDaftarState extends State<halamanDaftar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 85,
                ),
                //Logo
                Image.asset(
                  "assets/logo/logo-cpp-birumuda.png",
                  width: 350,
                ),

                const SizedBox(
                  height: 38,
                ),

                //Sign up text
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: 'fontsegeo',
                    fontSize: 25,
                    color: Color(0xFF319CE4),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),

                //Sign Up to text
                Text(
                  "Masukkan data untuk mendaftar",
                  style: TextStyle(
                    fontFamily: 'fontsegeo',
                    fontSize: 15,
                    color: Color(0xFF319CE4),
                  ),
                ),

                const SizedBox(
                  height: 38,
                ),

                //Username field
                MyTextField(
                  textTidakTerlihat: "Username",
                  obscuretext: false,
                ),

                const SizedBox(
                  height: 16,
                ),

                //Email field
                MyTextField(
                  textTidakTerlihat: "Email",
                  obscuretext: false,
                ),

                const SizedBox(
                  height: 16,
                ),

                //Password field
                MyTextField(
                  textTidakTerlihat: "Password",
                  obscuretext: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                //Button Sign Up
                MyButton(
                  onTap: userDaftar,
                  textApa: ("Sign Up"),
                ),
                const SizedBox(
                  height: 45,
                ),

                //Sudah text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sudah punya akun?",
                      style: TextStyle(
                        fontFamily: 'fontsegeo',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => halamanLogin()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: 'fontsegeo',
                          fontSize: 14,
                          color: Color(0xFF319CE4),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
