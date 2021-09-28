import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'assets/custom_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[CustomAppBar()],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 40, 40, 40),
      height: 157,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    scale: 1.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Акции')),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.phone),
                      Text("+(380) 98 - 359 -74 -68"),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.black87,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Color.fromRGBO(127, 167, 235, 1.0),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Каталог',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  fontSize: 18,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Color.fromRGBO(127, 167, 235, 1.0),
                                size: 30,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[700],
                child: Row(
                  children: [
                    Text('Поиск'),
                    SizedBox(
                      width: 420,
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              Column(
                children: [
                  Row(children: [
                    Icon(MyFlutterApp.heart),
                    Icon(Icons.shopping_cart),
                    Icon(MyFlutterApp.user)
                  ])
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
