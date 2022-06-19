import 'package:flutter/material.dart';

class NutellaScreen extends StatelessWidget {
  const NutellaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nutella Pie',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          const Text(
            'Ingridients',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color.fromARGB(255, 240, 240, 242),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Ingridients Name',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'measurement',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
