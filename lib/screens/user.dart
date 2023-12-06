import 'package:app_frutas_verduras/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _listTiles(
                title: 'Adress 2 ',
                subtitle: 'My subtitle',
                icon: IconlyLight.profile,
                onPressed: () {}),
            _listTiles(
              title: 'Orders',
              icon: IconlyLight.bag,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Wishlist',
              icon: IconlyLight.heart,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Viewed',
              icon: IconlyLight.show,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Forget password',
              icon: IconlyLight.unlock,
              onPressed: () {},
            ),
            SwitchListTile(
              title: const Text('Theme'),
              secondary: Icon(themeState.getDarkTheme
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              onChanged: (bool value) {
                setState(() {
                  themeState.setDarkTheme = value;
                });
              },
              value: themeState.getDarkTheme,
            ),
            _listTiles(
              title: 'Logout',
              icon: IconlyLight.logout,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _listTiles(
      {required String title,
      String? subtitle,
      required IconData icon,
      required Function onPressed}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle == null ? "" : subtitle),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }
}
