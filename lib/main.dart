import 'package:flutter/material.dart';
import 'package:tecno_rithm/main_page/main_page_widgets.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MainPage(),
  theme: new ThemeData(
      canvasColor: Color.fromARGB(255, 40, 40, 40),
),
));