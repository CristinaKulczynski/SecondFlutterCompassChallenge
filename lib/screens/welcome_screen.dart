import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 469,
            color: const Color.fromRGBO(255, 164, 81, 1),
          ),
        ],
      ),
    );
  }
}
