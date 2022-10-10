import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BolinhaDaTag extends StatelessWidget {
  final String label;

  const BolinhaDaTag({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 32),
        padding: const EdgeInsets.only(top: 4, right: 16, left: 16, bottom: 4),
        margin: const EdgeInsets.only(left: 4,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
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
