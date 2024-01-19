import 'package:app_frutas_verduras/provider/dark_theme_provider.dart';
import 'package:app_frutas_verduras/services/utils.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offreImages = [
    'asset/offres/offre1.png',
    'asset/offres/offre2.png',
    'asset/offres/offre3.png',
    'asset/offres/offre4.png'
  ];
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = utils.getTheme;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      body: SizedBox(
        height: size.height * 0.33,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              _offreImages[index],
              fit: BoxFit.fill,
            );
          },
          autoplay: true,
          itemCount: _offreImages.length,
          pagination: const SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
                color: Colors.white, activeColor: Colors.red),
          ),
        ),
      ),
    );
  }
}
