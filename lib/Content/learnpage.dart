import 'package:cpp_course/components/tutorial_card.dart';
import 'package:cpp_course/components/tutorial_card2.dart';
import 'package:cpp_course/components/tutorial_card3.dart';
import 'package:cpp_course/components/tutorial_card4.dart';
import 'package:cpp_course/components/tutorial_card5.dart';
import 'package:cpp_course/components/tutorial_card6.dart';
import 'package:cpp_course/components/tutorial_card7.dart';
import 'package:cpp_course/components/tutorial_card8.dart';
import 'package:cpp_course/components/tutorial_card9.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          TutorialCard(
            gbrTutorial: ("assets/tutorial/Speaker.png"),
            tJudul: ("Pengenalan Bahasa C++"),
            tSelesai: ("0/3 Selesai"),
            tSatu: ("Apa Itu Pemograman C++?"),
            tDua: ("Bagaimana C++ dapat Bekerja?"),
            tTiga: ("Kita Revisi"),
          ),
          TutorialCard2(
            gbrTutorial: ("assets/tutorial/Writing_Down.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu2: ("Under Maintenance"),
            tDua2: ("Under Maintenance"),
            tTiga2: ("Under Maintenance"),
          ),
          TutorialCard3(
            gbrTutorial: ("assets/tutorial/storage.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu3: ("Under Maintenance"),
            tDua3: ("Under Maintenance"),
            tTiga3: ("Under Maintenance"),
          ),
          TutorialCard4(
            gbrTutorial: ("assets/tutorial/comments.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu4: ("Under Maintenance"),
            tDua4: ("Under Maintenance"),
            tTiga4: ("Under Maintenance"),
          ),
          TutorialCard5(
            gbrTutorial: ("assets/tutorial/Split.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu5: ("Under Maintenance"),
            tDua5: ("Under Maintenance"),
            tTiga5: ("Under Maintenance"),
          ),
          TutorialCard6(
            gbrTutorial: ("assets/tutorial/Repeat.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu6: ("Under Maintenance"),
            tDua6: ("Under Maintenance"),
            tTiga6: ("Under Maintenance"),
          ),
          TutorialCard7(
            gbrTutorial: ("assets/tutorial/sequence.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu7: ("Under Maintenance"),
            tDua7: ("Under Maintenance"),
            tTiga7: ("Under Maintenance"),
          ),
          TutorialCard8(
            gbrTutorial: ("assets/tutorial/Task.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu8: ("Under Maintenance"),
            tDua8: ("Under Maintenance"),
            tTiga8: ("Under Maintenance"),
          ),
          TutorialCard9(
            gbrTutorial: ("assets/tutorial/string.png"),
            tJudul: ("Under Maintenance"),
            tSelesai: ("Under Maintenance"),
            tSatu9: ("Under Maintenance"),
            tDua9: ("Under Maintenance"),
            tTiga9: ("Under Maintenance"),
          ),
        ],
      ),
    );
  }
}
