import 'package:cpp_course/Content/LearnContent/Pengenalan_Test/Selesai.dart';
import 'package:cpp_course/Content/LearnContent/Pengenalan_Test/kitarevisi_soal3.dart';

import 'package:flutter/material.dart';

class Nomor4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nomor4Page(),
    );
  }
}

class Nomor4Page extends StatefulWidget {
  @override
  _Nomor4State createState() => _Nomor4State();
}

class _Nomor4State extends State<Nomor4Page> {
  void _answerQuestion(bool isCorrect) {
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          if (isCorrect) {
            return AlertDialog(
              title: Text('Jawaban Anda Benar'),
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 26, 0),
                  child: Column(
                    children: [
                      Image.asset("assets/ico/correct.png"),
                      const SizedBox(height: 20),
                      Text(
                        "Itu benar sekali sobat",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 0),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Selesai()));
                        },
                        child: Text('Tap Untuk Melanjutkan'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text('Jawaban Anda Salah'),
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 17, 0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/ico/wrong.png",
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Maaf, jawaban Anda salah",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 0),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Tap Untuk Melanjutkan'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF606060),
                          size: 50.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Nomor3()));
                        },
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.volume_up_sharp,
                          color: Color(0xFF606060),
                          size: 50.0,
                        ),
                        onPressed: () {
                          // Tindakan yang dijalankan ketika tombol ditekan
                          // Misalnya, menutup dialog atau melakukan aksi tertentu
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Kode C++ diubah menjadi bentuk ?',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 50.0),
                        Text(
                          'Pilih jawaban yang benar',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFFACAAAA),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30.0),
                        Column(
                          children: [
                            Container(
                              child: Column(children: [
                                ElevatedButton(
                                  onPressed: () => _answerQuestion(false),
                                  child: Text(
                                    'Huruf',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(800, 50),
                                    primary: Colors
                                        .white, // Warna latar belakang tombol
                                    onPrimary:
                                        Colors.black, // Warna teks pada tombol

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Bentuk sudut tombol
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Container(
                              child: Column(children: [
                                ElevatedButton(
                                  onPressed: () => _answerQuestion(false),
                                  child: Text(
                                    'Bilangan Bulat',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(800, 50),
                                    primary: Colors
                                        .white, // Warna latar belakang tombol
                                    onPrimary:
                                        Colors.black, // Warna teks pada tombol

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Bentuk sudut tombol
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Container(
                              child: Column(children: [
                                ElevatedButton(
                                  onPressed: () => _answerQuestion(true),
                                  child: Text(
                                    'Biner',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(800, 50),
                                    primary: Colors
                                        .white, // Warna latar belakang tombol
                                    onPrimary:
                                        Colors.black, // Warna teks pada tombol

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Bentuk sudut tombol
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Container(
                              child: Column(children: [
                                ElevatedButton(
                                  onPressed: () => _answerQuestion(false),
                                  child: Text(
                                    'Pecahan',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(800, 50),
                                    primary: Colors
                                        .white, // Warna latar belakang tombol
                                    onPrimary:
                                        Colors.black, // Warna teks pada tombol

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Bentuk sudut tombol
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
