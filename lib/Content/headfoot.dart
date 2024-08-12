import 'package:cpp_course/Content/learnpage.dart';
import 'package:cpp_course/Content/homepage.dart';
import 'package:cpp_course/Content/deskripsipage.dart';
import 'package:cpp_course/other/pengaturan.dart';
import 'package:cpp_course/other/premium.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeadFoot extends StatefulWidget {
  const HeadFoot({super.key});

  @override
  State<HeadFoot> createState() => _HeadFootState();
}

class _HeadFootState extends State<HeadFoot> {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    Homepage(),
    LearnPage(),
    DeskripsiPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Ganti warna sesuai keinginan Anda
        ),
        backgroundColor: Color(0xFF319CE4),
        actions: [
          //header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset("assets/logo/cpp.png"),
                const SizedBox(width: 130),
                Image.asset(
                  "assets/ico/crown.png",
                  width: 37,
                  height: 74,
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PremiumPage()));
                  },
                  child: Text(
                    "Premium",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'fontsegeo',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF319CE4),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                maxRadius: 200,
                minRadius: 200,
              ),
              accountName: Text("Fadhil Rafi"),
              accountEmail: Text("fadhil.123@gmail.com"),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/ico/Settings.png",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pengaturan()));
                    },
                    child: Text("Pengaturan"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/ico/Star.png",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Nilai Kami"),
                ],
              ),
            ),
            Divider(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/ico/crown.png",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PremiumPage()));
                    },
                    child: Text("Premium"),
                  ),
                ],
              ),
            ),
            Divider(
              height: 30,
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: widgetOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF2F2F2),
        selectedItemColor: Color(0xFF319CE4),
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill_outlined),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "Description",
          ),
        ],
      ),
    );
  }
}

// class BottomBar extends StatefulWidget {
//   final ikonBtm;
//   final labelApa;
//   const BottomBar({super.key, required this.ikonBtm, required this.labelApa});
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int selectedIndex = 0;
//   final List<Widget> widgetOptions = [
//     halamanLogin(),
//     halamanDaftar(),
//     Home(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: "favorite",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "person",
//           ),
//         ],
//       ),
//       body: widgetOptions[selectedIndex],
//     );
//   }
// }
