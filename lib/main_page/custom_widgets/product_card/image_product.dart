import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;

  ProductImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 120,
      child: FittedBox(
        child: Image.asset(image),
        fit: BoxFit.cover,
      ),
    );
  }
}
