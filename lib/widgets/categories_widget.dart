import 'package:app_frutas_verduras/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double _screenWidth = MediaQuery.of(context).size.width;
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.red.withOpacity(0.7),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: _screenWidth * 0.3,
            width: _screenWidth * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/cat/veg.png'), fit: BoxFit.fill),
            ),
          ),
          TextWidget(text: 'Category name', color: color, textSize: 15)
        ],
      ),
    );
  }
}
