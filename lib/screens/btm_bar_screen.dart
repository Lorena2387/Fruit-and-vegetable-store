import 'package:app_frutas_verduras/screens/cart.dart';
import 'package:app_frutas_verduras/screens/categories.dart';
import 'package:app_frutas_verduras/screens/home_screen.dart';
import 'package:app_frutas_verduras/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const UserScreen(),
  ];
  void _selectedPages(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _selectedPages,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.category), label: 'categories'),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.buy),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.user2),
              label: 'User',
            )
          ]),
    );
  }
}
