import 'package:cpp_course/Content/headfoot.dart';

import 'package:cpp_course/components/my_button.dart';
import 'package:cpp_course/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:cpp_course/SignUp/daftar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class halamanLogin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: myHome(),
//     );
//   }
// }

// class myHome extends StatefulWidget {
//   @override
//   loginState createState() => loginState();
// }

// class loginState extends State<myHome> {
  void userMasuk() {}
//   @override
//   void initState() {
//     super.initState();
//   }

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
                //logo
                Image.asset(
                  "assets/logo/logo-cpp-birumuda.png",
                  width: 350,
                ),
                const SizedBox(
                  height: 38,
                ),

                //text LOG IN
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'fontsegeo',
                    color: Color(0xFF319CE4),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //text Login to
                Text(
                  "Login menuju akun anda",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'fontsegeo',
                    color: Color(0xFF319CE4),
                  ),
                ),

                const SizedBox(
                  height: 38,
                ),

                //field username
                MyTextField(
                  textTidakTerlihat: 'Username',
                  obscuretext: false,
                ),

                const SizedBox(
                  height: 16,
                ),

                //field password
                MyTextField(
                  textTidakTerlihat: 'Password',
                  obscuretext: true,
                ),

                const SizedBox(
                  height: 16,
                ),
                //test Forgot Pass

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lupa Password ?',
                        style: TextStyle(
                            color: Color(0xFF4B3F2F),
                            fontFamily: 'fontsegeo',
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Reset',
                        style: TextStyle(
                            color: Color(0xFF319CE4),
                            fontSize: 14,
                            fontFamily: 'fontsegeo'),
                      ),
                    ],
                  ),
                ),

                //Button Sign In
                GestureDetector(
                  child: MyButton(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HeadFoot()));
                    },
                    textApa: "Sign In",
                  ),
                ),

                const SizedBox(
                  height: 90,
                ),

                //Belum Punya akun?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum Punya Akun?",
                      style: TextStyle(
                        fontFamily: 'fontsegeo',
                        fontSize: 14,
                        color: Color(0xFF4B3F2F),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => halamanDaftar()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'fontsegeo',
                          color: Color(0xFF319CE4),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//sign in user method

