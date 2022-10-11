import 'package:desafio_sprint_dois/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class OrderComplete extends StatefulWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  State<OrderComplete> createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SplashScreen(),
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
                'Track order',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
