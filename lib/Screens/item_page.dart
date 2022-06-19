import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/nuttella_page.dart';
import 'package:recipe_app/constant.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Find The Best Recipe for Baking',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Items(
              imageTitle: 'images/nutella_pie.jpg',
              textTitle: 'Nutella Pie',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const NutellaScreen();
                  }),
                );
              },
            ),
          ],
        ));
  }
}

class Items extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Items(
      {required this.imageTitle, required this.textTitle, required this.onTap});
  final String imageTitle;
  final String textTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(25.0),
        height: 400.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageTitle),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xaa212023),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(textTitle, style: itemText),
          ),
        ),
      ),
    );
  }
}
