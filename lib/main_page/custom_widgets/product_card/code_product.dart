import 'package:flutter/material.dart';

class ProductCode extends StatelessWidget {
  final int code;
  ProductCode({required this.code});
  @override
  Widget build(BuildContext context) {
    return Text(
      "Код: $code",
      style: TextStyle(
          fontSize: 10,
          color: Color.fromRGBO(201, 201, 201, 0.47843137254901963),
          fontWeight: FontWeight.w200),
    );
  }
}
