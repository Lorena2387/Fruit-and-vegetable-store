import 'package:app_frutas_verduras/services/utils.dart';
import 'package:app_frutas_verduras/widgets/heart_btn.dart';
import 'package:app_frutas_verduras/widgets/price_widget.dart';
import 'package:app_frutas_verduras/widgets/text_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class FeedsWidget extends StatefulWidget {
  const FeedsWidget({super.key});

  @override
  State<FeedsWidget> createState() => _FeedsWidgetState();
}

class _FeedsWidgetState extends State<FeedsWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).cardColor,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Image.asset(
                'asset/images/apple.png',
                width: size.width * 0.12,
                height: size.height * 0.10,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Title',
                    color: color,
                    textSize: 8,
                    isTitle: true,
                  ),
                  const HeartBtn()
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PriceWidget(),
                    Row(
                      children: [
                        Flexible(
                            child: FittedBox(
                                child: TextWidget(
                          text: 'KG',
                          color: color,
                          textSize: 18,
                          isTitle: true,
                        )))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
