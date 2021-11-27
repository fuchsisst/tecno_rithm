import 'package:flutter/material.dart';
import 'package:tecno_rithm/main_page/main_page_widgets.dart';

import 'autorization/sing_in.dart';
import 'page_smartphone/main_smartphone_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: new ThemeData(
        canvasColor: Color.fromARGB(255, 40, 40, 40),
      ),
      routes: {
        '/authorization': (_) => Login(),
        '/main_smartphone_page': (_) => MainSmartphonePage(),
      },
    ));
