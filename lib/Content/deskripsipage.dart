import 'package:flutter/material.dart';

class DeskripsiPage extends StatelessWidget {
  const DeskripsiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apa yang Akan Saya Pelajari?",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichTextWithBullet(
                    "Belajar memprogram dengan salah satu Bahasa pemograman paling kuat C++"),
                RichTextWithBullet(
                    "Konsep Kunci, C++ merupakan dasar dari banyak Bahasa Pemograman, sehingga konsep kunci pemograman C++ juga dapat diterapkan pada Bahasa Pemograman lain"),
                RichTextWithBullet("Membuat Program Dasar menggunakan C++"),
                RichTextWithBullet(
                    "Melakukan perhitungan dan menampilkan hasilnya"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Siapa Target Audiensnya?",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichTextWithBullet(
                    "Kursus ini sangat cocok untuk pemula yang tidak memiliki pengalaman Coding sebelumnya"),
                RichTextWithBullet(
                    "Pemograman beralih ke C++ dari beberapa Bahasa lain seperti Java, Ruby, atau Python"),
                RichTextWithBullet(
                    "C++ digunakan dalam pembuatan game, jadi jika Anda ingin mengembangkan Game sebaiknya mulai dengan C++ dasar"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Benefit",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichTextWithBullet(
                    "C++ Bukan hanya Bahasa Pemograman yang kuat. Ini juga merupakan dasar dari berbagai banyak Bahasa populer lainnya, Jadi pengetahuan ini akan berguna bagi Anda, bahkan ketika Anda tidak menggunakan C++"),
                RichTextWithBullet(
                    "C++ adalah Bahasa Pemograman berorientasi objek dan mencakup kelas, pewarisan, polimorfisme, abstraksi data, dan enkapsulasi"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Gaji",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichTextWithBullet("70.000 USD Per Tahun"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Persyaratan",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichTextWithBullet(
                    "Tidak diharapkan pengetahuan Pemograman sebelumnya"),
                RichTextWithBullet("Minat yang Tulus untuk Belajar"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RichTextWithBullet extends StatelessWidget {
  final String text;

  RichTextWithBullet(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "•", // Bullet karakter
            style: TextStyle(fontSize: 17, fontFamily: 'fontsegeo'),
          ),
          SizedBox(width: 8), // Spasi antara bullet dan teks
          Expanded(
            child: RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
