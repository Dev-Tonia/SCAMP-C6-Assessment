import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/item_page.dart';
import 'package:recipe_app/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image.jfif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: const Color(0xaa212023),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Cooking Expernice Like A Chef',
                style: largeTextStyle,
              ),
              const Text(
                'Bake with ease, this wonderful recipe pick just for you.',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8B8B8B)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                child: Material(
                  //Wrap with Material
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  elevation: 18.0,
                  color: const Color(0xff5ABF6D),
                  clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 70,
                    color: const Color(0xff5ABF6D),
                    child: const Text('Get Started',
                        style: TextStyle(fontSize: 25.0, color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ItemPage();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
