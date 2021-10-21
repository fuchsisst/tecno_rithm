import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.star, size: 18, color: Color.fromARGB(255, 40, 40, 40)),
          Icon(Icons.star, size: 18, color: Color.fromARGB(255, 40, 40, 40)),
          Icon(Icons.star, size: 18, color: Color.fromARGB(255, 40, 40, 40)),
          Icon(Icons.star, size: 18, color: Color.fromARGB(255, 40, 40, 40)),
          Icon(Icons.star, size: 18, color: Color.fromARGB(255, 40, 40, 40)),
        ],
      ),
    );
  }
}
