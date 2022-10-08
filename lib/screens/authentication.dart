import 'package:desafio_sprint_dois/screens/home_sreen_one.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget{
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 469, // Altura
              width: 395, // Largura
              color: const Color.fromRGBO(255, 164, 81, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/fruit_authentication.png'),
                  const SizedBox(
                    height: 35,
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
                    'What is your firstname?',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(39, 33, 77, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Color.fromRGBO(194, 189, 189, 0.7),),
                      border: OutlineInputBorder(),
                      hintText: 'Chris',
                      fillColor: Color.fromRGBO(247, 245, 245, 1),
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreenOne(),
                      ),
                    );},
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
                      'Start Ordering',
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
          ],
        ),
      ),
    );
  }
}
