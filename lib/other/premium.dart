import 'package:cpp_course/Content/headfoot.dart';
import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                const Color(0xFF480591),
                const Color(0xFFAF53EC),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    //upgrade
                    Text(
                      "Upgrade ke yang lebih baik",
                      style: TextStyle(
                          fontFamily: 'fontsegeo',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 130,
                    ),

                    //salah
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HeadFoot()));
                      },
                      child: Image.asset("assets/ico/exitpremium.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                //bgimage
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/trypro.png",
                      width: 330,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),

                //text C++ PREMIUM
                Text(
                  "C++ PREMIUM",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 26,
                ),

                //text Dapatkan
                Text(
                  "Dapatkan 3 Bulan Premium seharga Rp 54,990",
                  style: TextStyle(
                      fontFamily: 'fontsegeo',
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 43,
                ),

                //button Beli
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
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
                                "BELI PREMIUM",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
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
