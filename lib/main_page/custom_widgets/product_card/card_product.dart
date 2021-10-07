import 'package:flutter/material.dart';
import 'package:tecno_rithm/main_page/assets/custom_icons.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/code_product.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/constans_product.dart';

Widget Product_Card(index) => Container(
  width: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color.fromARGB(255, 79, 79, 79),
  ),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(MyFlutterApp.heart, size: 30, color: Color.fromARGB(255, 40, 40, 40),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Product_Code(code: card_Code[index]),
          )
        ],
      ),
      Row(
        children: <Widget>[
          Image.asset('assets/images/Computer_Product.png')
        ],
      )
    ],
  ),
);