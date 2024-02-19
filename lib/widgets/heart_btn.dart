import 'package:app_frutas_verduras/services/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeartBtn extends StatelessWidget {
  const HeartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    return GestureDetector(
      onTap: () {
        print('print heart');
      },
      child: Icon(
        IconlyLight.heart,
        size: 8,
        color: color,
      ),
    );
  }
}
