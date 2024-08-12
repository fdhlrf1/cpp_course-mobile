import 'package:cpp_course/Content/LearnContent/Pengenalan_Test/kitarevisi_soal1.dart';
import 'package:cpp_course/Content/headfoot.dart';

import 'package:flutter/material.dart';

class KitaRevisiSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KitaRevisiSatuPage(),
    );
  }
}

class KitaRevisiSatuPage extends StatefulWidget {
  @override
  _KitaRevisiSatuState createState() => _KitaRevisiSatuState();
}

class _KitaRevisiSatuState extends State<KitaRevisiSatuPage> {
  List<String> sentences = [
    "Sobat, sekarang Anda siap untuk melanjutkan dan menulis beberapa kode dalam C++.",
    "Namun sebelum itu, izinkan saya melakukan tes kecil dan pada topik berikutnya, saya akan mengajari Anda cara menulis beberapa kode.",
  ];

  List<Widget> displayedTextWidgets = [];
  bool isLastSentence = false;

  void _showNextSentence() {
    if (sentences.isNotEmpty) {
      setState(() {
        displayedTextWidgets.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
            child: Text(
              sentences.removeAt(0),
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        );
      });
    } else {
      setState(() {
        isLastSentence = true;
      });
    }
  }

  void _navigateToAnotherPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Nomor1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Panggil _showNextSentence() jika displayTextWidgets kosong
    if (displayedTextWidgets.isEmpty && !isLastSentence) {
      _showNextSentence();
    }

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Color(0xFF606060),
                          size: 50.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HeadFoot()));
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
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hallo, Senang bertemu dengan Anda",
                    style: TextStyle(fontFamily: 'fontsegeo', fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/belajar/exam.png",
                    width: 150,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            ...displayedTextWidgets,
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 40, 50),
        child: isLastSentence
            ? ElevatedButton(
                onPressed: _navigateToAnotherPage,
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  padding: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      // begin: Alignment.centerLeft,
                      // end: Alignment.centerRight,
                      colors: [
                        const Color(0xFF0101FE),
                        const Color(0xFF319CE4),
                      ], // Sesuaikan warna gradien
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SELANJUTNYA",
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 20),
                child: ElevatedButton(
                  onPressed: _showNextSentence,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(200),
                    padding: EdgeInsets.all(0.0),
                    primary: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tap untuk Melanjutkan",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFF319CE4),
                            fontFamily: 'fontsegeo',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
