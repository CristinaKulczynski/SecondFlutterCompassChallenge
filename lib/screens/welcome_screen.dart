import 'package:desafio_sprint_dois/screens/authentication.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const SizedBox(
            height: 41,
          ),
          SizedBox(
            width: 330, // Largura
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get The Freshest Fruit Salad Combo',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(39, 33, 77, 1),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      'We deliver the best and freshest fruit salad \nin town. Order for a combo today!!!',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(93, 87, 126, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Authentication(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 164, 81, 1),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          const Size(327, 56),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Let’s Continue',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
