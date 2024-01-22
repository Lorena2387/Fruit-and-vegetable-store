import 'package:app_frutas_verduras/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 2,
        child: FittedBox(
          child: Row(
            children: [
              TextWidget(
                text: '1.59\$',
                color: Colors.green,
                textSize: 22,
              ),
              const SizedBox(
                width: 5,
              ),
              Text('2.59\$')
            ],
          ),
        ));
  }
}
