import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.controller,
    this.textTidakTerlihat,
    this.obscuretext,
    this.iconField,
  });
  final controller;
  final textTidakTerlihat;
  final obscuretext;
  final iconField;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 165, 165, 165),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFF319CE4),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          prefixIcon: iconField,
          hintText: textTidakTerlihat,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
