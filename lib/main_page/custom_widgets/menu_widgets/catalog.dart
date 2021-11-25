import 'package:flutter/material.dart';

//Блок каталогу товарів та послуг. Визиває drawer
class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Scaffold.of(context).openDrawer(),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.menu,
                color: Color.fromRGBO(127, 167, 235, 1.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text('Каталог',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontSize: 18,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromRGBO(127, 167, 235, 1.0),
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
