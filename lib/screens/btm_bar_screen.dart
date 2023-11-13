import 'package:app_frutas_verduras/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List _pages = [HomeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
