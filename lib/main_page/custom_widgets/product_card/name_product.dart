import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  final String name;
  ProductName({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(name,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
            fontWeight: FontWeight.w500, color: Colors.white, fontSize: 12));
  }
}
