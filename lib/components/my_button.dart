import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  final Function() onTap;
  final textApa;
  const MyButton({super.key, required this.onTap, this.textApa});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 17),
        decoration: BoxDecoration(
          color: Color(0xFF319CE4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            textApa,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
