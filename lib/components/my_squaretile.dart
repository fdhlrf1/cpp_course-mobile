import 'package:flutter/material.dart';

class MySquareTile extends StatelessWidget {
  final String imagePath;
  const MySquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey[300],
      ),
      child: Image.asset(
        imagePath,
        height: 30,
      ),
    );
  }
}
