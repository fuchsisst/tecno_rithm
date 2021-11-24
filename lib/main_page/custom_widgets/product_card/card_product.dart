import 'package:flutter/material.dart';

import 'package:tecno_rithm/main_page/assets/custom_icons.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/code_product.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/constans_product.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/image_product.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/name_product.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/rate_product.dart';

Widget Product_Card(index) => Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 79, 79, 79),
      ),
      child: Column(
        children: [
          //Icon and product Id
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  IconPack1.heart,
                  size: 30,
                  color: Color.fromARGB(255, 40, 40, 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: ProductCode(code: card_Code[index]),
              )
            ],
          ),
          //Product image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProductImage(image: card_Image[index]),
            ],
          ),
          //Product name
          Container(
            height: 60,
            child: Row(children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 14, 12, 0),
                  child: ProductName(name: card_Name[index]),
                ),
              )
            ],),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ProductRating(),
              )
            ],
          )
        ],
      ),
    );
