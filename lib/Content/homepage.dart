import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      //Banner

      Expanded(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  width: 384,
                  height: 166,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: const BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color(0xFF0101FE),
                          const Color(0xFF319CE4),
                        ],
                      ),
                    ),
                    child: Row(children: [
                      Image.asset(
                        "assets/bg/les.png",
                        width: 160,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Benefit Belajar C++",
                              style: TextStyle(
                                  fontFamily: 'fontsegeo',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Baca Selengkapnya",
                              style: TextStyle(
                                  fontFamily: 'fontsegeo',
                                  fontSize: 12,
                                  color: Colors.pink),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
              child: Text(
                "Kursus",
                style: TextStyle(
                    fontFamily: 'fontsegeo',
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //BOX 1

            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                      child: Container(
                        width: 180,
                        height: 150,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 37,
                                  height: 40,
                                ),
                                Image.asset(
                                  "assets/ico/medali.png",
                                  width: 30,
                                ),
                                Text(
                                  "Pemula",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'fontsegeo'),
                                ),
                              ],
                            ),
                            Image.asset("assets/bg/jadulfix1.png"),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(190, 20, 0, 0),
                      child: Container(
                        width: 180,
                        height: 150,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 25,
                                  height: 40,
                                ),
                                Image.asset(
                                  "assets/ico/medali.png",
                                  width: 30,
                                ),
                                Text(
                                  "Menengah",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'fontsegeo'),
                                ),
                              ],
                            ),
                            Image.asset("assets/bg/tengah.png"),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                      child: Container(
                        width: 180,
                        height: 150,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                  height: 40,
                                ),
                                Image.asset(
                                  "assets/ico/medali.png",
                                  width: 30,
                                ),
                                Text(
                                  "Pakar",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'fontsegeo'),
                                ),
                              ],
                            ),
                            Image.asset("assets/bg/modern3.png"),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(190, 20, 0, 0),
                      child: Container(
                        width: 180,
                        height: 150,
                        child: Column(children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lencana',
                            style: TextStyle(
                                fontFamily: 'fontsegeo',
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/ico/trophy.png")
                        ]),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ],
        ),
      )
    ]));
  }
}
