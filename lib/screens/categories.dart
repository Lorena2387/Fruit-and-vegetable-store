import 'package:app_frutas_verduras/widgets/categories_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CategoriesWidget()),
    );
  }
}
