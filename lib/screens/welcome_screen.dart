import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 469, // Altura
            width: 395, // Largura
            color: const Color.fromRGBO(255, 164, 81, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/fruit_welcome2.png'),
                    Container(
                      width: 55,
                    ),
                  ],
                ),
                Image.asset('assets/images/fruit_welcome.png'),
                Padding(
                  padding: const EdgeInsets.all(7.5),
                  child: Image.asset('assets/images/ellipse_welcome.png'),
                ),
                Container(height: 25.5 // Altura
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
