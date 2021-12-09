import 'package:flutter/material.dart';
import 'package:tecno_rithm/global_constans/color_constans.dart';

class SearchLine extends StatelessWidget {
  const SearchLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 36,
      decoration: BoxDecoration(
        color: DarkBlue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
         //fir hintText: 'Search',
          labelText: 'Search',
          suffixIcon: Icon(Icons.search),
        ),
      )
    );
  }
}
