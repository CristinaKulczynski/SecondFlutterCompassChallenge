import 'package:flutter/material.dart';

class AddToBasket extends StatefulWidget {
  const AddToBasket({Key? key}) : super(key: key);

  @override
  State<AddToBasket> createState() => _AddToBasketState();
}

class _AddToBasketState extends State<AddToBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 164, 81, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 498,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quinoa Fruit Salad',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(39, 33, 77, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(top: 3, bottom: 3),
                                backgroundColor:
                                    const Color.fromRGBO(255, 242, 231, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Color.fromRGBO(255, 164, 81, 1),
                                size: 26,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 24, right: 24),
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(39, 33, 77, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(top: 3, bottom: 3),
                                backgroundColor:
                                const Color.fromRGBO(255, 242, 231, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color.fromRGBO(255, 164, 81, 1),
                                size: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [Icon(
                          Icons.attach_money,
                          color: Color.fromRGBO(240, 134, 38, 1),
                          size: 30,
                        ),
                          Padding(
                            padding: EdgeInsets.only(right: 24),
                            child: Text(
                              '2,000',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(240, 134, 38, 1),
                              ),
                            ),
                          ),],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
