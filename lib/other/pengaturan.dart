import 'package:cpp_course/Content/headfoot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(170.0), // Tinggi yang diinginkan untuk AppBar
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 45, 0, 30),
              child: Row(
                children: [
                  //icon
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HeadFoot()));
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 35.0,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  //text pengaturan
                  Text(
                    "Pengaturan",
                    style: TextStyle(fontFamily: 'fontsegeo', fontSize: 25),
                  ),
                ],
              ),
            ),
            // Padding untuk menyembunyikan status bar
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius:
                      4.0, // Semakin tinggi nilai blurRadius, semakin lebar bayangan
                  offset:
                      Offset(0.0, 3.0), // Offset untuk mengatur arah bayangan
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //txtATAS PREMIUM
                Text(
                  "PREMIUM",
                  style: TextStyle(fontFamily: 'fontsegeo', fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),

                //isi
                Text(
                  "C++ Premium",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),

                //divider
                Divider(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),

                //txtATAS UMUM
                Text(
                  "UMUM",
                  style: TextStyle(fontFamily: 'fontsegeo', fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),

                //isi
                Text(
                  "Notifikasi",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),

                //isi
                Text(
                  "Suara",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),

                //divider
                Divider(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),

                //txtATAS EKSTRA
                Text(
                  "EKSTRA",
                  style: TextStyle(fontFamily: 'fontsegeo', fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),

                //isi
                Text(
                  "Bantuan & FAQ",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),

                //isi
                Text(
                  "Ketentuan & Privasi",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
