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
          const SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(247, 247, 245, 1),
            child: ListView(
              scrollDirection: Axis.horizontal,
                children: [for (var tags in listaTags)  BolinhaDaTag(label: tags),]
            ),
          ),
        ],
      ),
    );
  }
}
