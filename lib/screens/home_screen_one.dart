import 'package:desafio_sprint_dois/widgets/bolinha_da_tag.dart';
import 'package:flutter/material.dart';

class HomeScreenOne extends StatefulWidget {
  final String name;

  const HomeScreenOne({Key? key, required this.name}) : super(key: key);

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  String get nome => widget.name;

  final List listaTags = ['All', 'Salad Combo', 'Berry Combo', 'Mongo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Image.asset('assets/images/group_home_screen_one.png'),
                Text(
                  '       Welcome, $nome',
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(39, 33, 77, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                const SizedBox(width: 10),
                SizedBox(
                  width: 288,
                  height: 56,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Padding(
                          padding: EdgeInsetsDirectional.only(start: 12.0),
                          child: Icon(Icons.search)),
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(194, 189, 189, 0.7),
                      ),
                      hintText: 'Search for fruit salad combos',
                      fillColor: Color.fromRGBO(247, 245, 245, 1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset('assets/images/group2_home_screen_one.png'),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              color: const Color.fromRGBO(247, 247, 245, 1),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                for (var tags in listaTags) BolinhaDaTag(label: tags),
              ]),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                'Recommended Combo',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(39, 33, 77, 1),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset('assets/images/line_home_screen_one.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 183,
            width: 152,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromRGBO(255, 255, 255, 1),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(32, 32, 32, 0.05),
                  offset: Offset(0, 30),
                  blurRadius: 60,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                'Hottest',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(39, 33, 77, 1),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Popular',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(180, 180, 192, 1),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'New Combo',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(180, 180, 192, 1),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset('assets/images/line2_home_screen_one.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 150,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromRGBO(255, 252, 242, 1),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(32, 32, 32, 0.05),
                  offset: Offset(0, 30),
                  blurRadius: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
