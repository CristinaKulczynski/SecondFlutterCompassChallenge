import 'package:desafio_sprint_dois/screens/order_list.dart';
import 'package:desafio_sprint_dois/widgets/bolinha_da_tag2.dart';
import 'package:flutter/material.dart';

class AddToBasket extends StatefulWidget {
  const AddToBasket({Key? key}) : super(key: key);

  @override
  State<AddToBasket> createState() => _AddToBasketState();
}

final List listaTags = ['Red Quinoa', 'Lime', 'Honey', 'Blueberries', 'Mango','Strawberries', 'Freshmint'];

class _AddToBasketState extends State<AddToBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 164, 81, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
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
                      const EdgeInsets.only(top: 2, bottom: 3, left: 2, right: 3),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: SizedBox(
              height: 176,
              width: 176,
              child: Image.asset(
                  'assets/images/fruit3bom_home_screen_one.png'),
            ),
          ),
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
              padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
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
                                padding:
                                    const EdgeInsets.only(top: 3, bottom: 3),
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
                                padding:
                                    const EdgeInsets.only(top: 3, bottom: 3),
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
                        children: const [
                          Icon(
                            Icons.attach_money,
                            color: Color.fromRGBO(240, 134, 38, 1),
                            size: 30,
                          ),
                          Text(
                            '2,000',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              color: Color.fromRGBO(240, 134, 38, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21, bottom: 8),
                    child:
                    Divider(),
                  ),
                  Row(
                    children: const [
                      Text(
                        'This combo contains:',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(39, 33, 77, 1),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 16),
                    child:
                        Image.asset('assets/images/line_home_screen_one.png'),
                  ),
                  SizedBox(
                    child: Wrap(children: [for (var tags in listaTags) BolinhaDaTag2(label: tags),],),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 14),
                    child: Image.asset('assets/images/line3_add_to_basket.png'),
                  ),
                  const Text(
                    'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(39, 33, 77, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 43),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(top: 3, bottom: 3),
                              backgroundColor:
                                  const Color.fromRGBO(255, 242, 231, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: const Icon(
                              Icons.favorite_border_rounded,
                              color: Color.fromRGBO(255, 164, 81, 1),
                              size: 26,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OrderList(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(255, 164, 81, 1),
                            ),
                            fixedSize: MaterialStateProperty.all(
                              const Size(219, 56),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Add To Basket',
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
          ),
        ],
      ),
    );
  }
}
