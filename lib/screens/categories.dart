import 'package:app_frutas_verduras/services/utils.dart';
import 'package:app_frutas_verduras/widgets/categories_widget.dart';
import 'package:app_frutas_verduras/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffB7DFF5),
  ];
  List<Map<String, dynamic>> catInfo = [
    {'imgPath': 'asset/cat/fruits.png', 'catText': 'Fruits'},
    {'imgPath': 'asset/cat/nuts.png', 'catText': 'Nuts'},
    {'imgPath': 'asset/cat/spinach.png', 'catText': 'Herbs'},
    {'imgPath': 'asset/cat/veg.png', 'catText': 'Vegetables'},
  ];

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(4, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}
