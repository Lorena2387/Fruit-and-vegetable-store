import 'package:app_frutas_verduras/services/utils.dart';
import 'package:app_frutas_verduras/widgets/heart_btn.dart';
import 'package:app_frutas_verduras/widgets/price_widget.dart';
import 'package:app_frutas_verduras/widgets/text_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({super.key});

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    final theme = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //FancyShimmerImage(
                    //imageUrl:
                    //'https://www.freepik.es/vector-gratis/diseno-vectores-coloridos-manzana_38655651.htm#query=manzanas&position=0&from_view=keyword&track=sph&uuid=d32df9c7-8d63-4f68-ade7-b4639388ac8a',
                    //height: size.width * 0.22,
                    //width: size.width * 0.22,
                    //boxFit: BoxFit.fill,
                    //),
                    Image.asset(
                      'asset/images/apple.png',
                      width: size.width * 0.12,
                      height: size.height * 0.10,
                      fit: BoxFit.fill,
                    ),
                    Column(
                      children: [
                        TextWidget(
                          text: '1KG',
                          color: color,
                          textSize: 22,
                          isTitle: true,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                IconlyLight.bag2,
                                size: 22,
                                color: color,
                              ),
                            ),
                            HeartBtn()
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const PriceWidget(
                  salePrice: 2.99,
                  price: 5.9,
                  textPrice: '2',
                  isOnSale: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
