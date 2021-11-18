import 'package:flutter/material.dart';
import 'package:tecno_rithm/main_page/custom_widgets/popular_product_line/constans_productline.dart';

class TypeOfProductLine extends StatelessWidget {
  const TypeOfProductLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
      child: Container(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, _)=>SizedBox(width: 8,),
          itemCount: typeOfProduct.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(61, 61, 61, 1.0),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Center(child: Text(typeOfProduct[index],
                  style: TextStyle(
                    fontSize: 14,
                  color: Colors.white
                ),)),
              ),
            );
          },
        ),
      ),
    );
  }
}



