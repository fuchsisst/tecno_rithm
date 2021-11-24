import 'package:flutter/material.dart';
import 'package:tecno_rithm/main_page/assets/custom_icons.dart';

class CardServices extends StatelessWidget {
 late final String text;
 late final IconData icon;

 CardServices(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        children: <Widget> [
        Icon(icon, size: 70, color: Color.fromRGBO(
            252, 186, 108, 1.0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(text,
            style: TextStyle(color: Colors.white38, fontWeight: FontWeight.w200),),
          )
        ]
      ),
    );
  }
}
