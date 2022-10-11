import 'package:desafio_sprint_dois/screens/order_complete.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget{
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
            child: Column(),
          ),
          const SizedBox(
            height: 41,
          ),
          SizedBox(
            width: 330, // Largura
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
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
                      const Size(327, 56),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
