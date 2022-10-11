import 'package:flutter/material.dart';

class BolinhaDaTag2 extends StatelessWidget {
  final String label;

  const BolinhaDaTag2({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(250, 250, 250, 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, top: 2, bottom: 2),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: Color.fromRGBO(39, 33, 77, 1),
          ),
        ),
      ),
    );
  }
}
