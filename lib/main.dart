import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tecno_rithm/main_page/main_page_widgets.dart';

import 'page_smartphone/main_smartphone_page.dart';

 main()  {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: new ThemeData(
        canvasColor: Color.fromARGB(255, 40, 40, 40),
      ),
      routes: {
        '/main_smartphone_page': (_) => MainSmartphonePage(),
      },
    ));
}
