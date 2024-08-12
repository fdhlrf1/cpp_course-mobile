import 'package:flutter/material.dart';

class TutorialCard6 extends StatelessWidget {
  const TutorialCard6({
    Key? key,
    required this.gbrTutorial,
    required this.tJudul,
    required this.tSelesai,
    required this.tSatu6,
    required this.tDua6,
    required this.tTiga6,
  }) : super(key: key);

  final gbrTutorial;
  final tJudul;
  final tSelesai;
  final tSatu6;
  final tDua6;
  final tTiga6;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 190,
      width: 364,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: ClipOval(
                    child: Image.asset(
                      gbrTutorial,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tJudul,
                      style: TextStyle(
                        fontFamily: 'fontsegeo',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "0/3 selesai",
                      style: TextStyle(
                        fontFamily: 'fontsegeo',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => BelajarSatu()));
                  },
                  child: buildRow(tSatu6),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => halamanDaftar()));
                  },
                  child: buildRow(tDua6),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => KitaRevisiSatu()));
                  },
                  child: buildRow(tTiga6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(String text) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'fontsegeo',
              fontSize: 15,
            ),
          ),
          Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
