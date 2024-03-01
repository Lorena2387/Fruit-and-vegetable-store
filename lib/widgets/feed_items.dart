import 'package:app_frutas_verduras/services/utils.dart';
import 'package:app_frutas_verduras/widgets/heart_btn.dart';
import 'package:app_frutas_verduras/widgets/price_widget.dart';
import 'package:app_frutas_verduras/widgets/text_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FeedsWidget extends StatefulWidget {
  const FeedsWidget({super.key});

  @override
  State<FeedsWidget> createState() => _FeedsWidgetState();
}

class _FeedsWidgetState extends State<FeedsWidget> {
  @override
  Widget build(BuildContext context) {
    final _quantityTextController = TextEditingController();
    @override
    void initState() {
      _quantityTextController.text = '1';
      super.initState();
    }

    @override
    void dispose() {
      _quantityTextController.dispose();
      super.dispose();
    }

    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return SingleChildScrollView(
      child: Container(
        width: 400,
        height: 400,
        child: Padding(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Title',
                          color: color,
                          textSize: 20,
                          isTitle: true,
                        ),
                        const HeartBtn()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 4,
                          child: PriceWidget(
                            salePrice: 2.99,
                            price: 5.9,
                            textPrice: '2',
                            isOnSale: true,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          child: Row(
                            children: [
                              FittedBox(
                                child: TextWidget(
                                  text: 'KG',
                                  color: color,
                                  textSize: 18,
                                  isTitle: true,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    controller: _quantityTextController,
                                    key: const ValueKey('10'),
                                    style:
                                        TextStyle(color: color, fontSize: 18),
                                    keyboardType: TextInputType.number,
                                    maxLines: 1,
                                    enabled: true,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]')),
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: TextWidget(
                      text: 'Add to card',
                      maxLines: 1,
                      color: color,
                      textSize: 18,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).cardColor),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
