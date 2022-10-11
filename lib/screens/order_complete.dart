import 'package:desafio_sprint_dois/screens/home_screen_one.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ordercomplete.png'),
            const Text(
              'Order Taken',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Poppins',
                color: Color.fromRGBO(39, 33, 77, 1),
              ),
            ),
            const SizedBox(
              width: 247,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  'Your order have been taken and is being attended to',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(17, 17, 17, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56, bottom: 24),
              child: ElevatedButton(
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
                    const Size(208, 56),
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
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreenOne(name: 'de volta',),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(252, 246, 240, 1),
                ),
                fixedSize: MaterialStateProperty.all(
                  const Size(208, 56),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'Continue shopping',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(240, 134, 38, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
