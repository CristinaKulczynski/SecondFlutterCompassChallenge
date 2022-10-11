import 'package:desafio_sprint_dois/screens/order_complete.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 136, // Altura
            width: 395, // Largura
            color: const Color.fromRGBO(255, 164, 81, 1),
            child: Align(
              alignment: const Alignment(-0.9, 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 32,
                      width: 75,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding:
                          const EdgeInsets.only(top: 2,
                              bottom: 3,
                              left: 2,
                              right: 3),
                          backgroundColor:
                          const Color.fromRGBO(255, 255, 255, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Color.fromRGBO(51, 51, 51, 0.8),
                              size: 20,
                            ),
                            Text(
                              'Go back',
                              style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(39, 33, 77, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      'My Basket',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 500,
          ),
          Container(
            color: const Color.fromRGBO(245, 244, 244, 1.0),
            height: 166,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 3, right: 18,bottom: 3,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color.fromRGBO(51, 51, 51, 1),
                          ),
                        ),
                        Row(
                          children: const[
                            Icon(Icons.attach_money_rounded),
                            Text(
                              '0,00',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromRGBO(39, 33, 77, 1)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderComplete(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 164, 81, 1),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          const Size(199, 56),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
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
