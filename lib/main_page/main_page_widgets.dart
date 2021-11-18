import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/card_product.dart';

import 'assets/custom_icons.dart';
import 'custom_widgets/ads_list/ads_tabrageselector.dart';
import 'custom_widgets/popular_product_line/type_of_product_line.dart';

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
        color: Color.fromARGB(255, 28, 28, 28),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[CustomAppBar(), AdsListTabSelector(), TovariLine(), Container(height: 200,color: Color.fromARGB(255, 28, 28, 28))],
          ),
        ),
      ),
    );
  }
}

class TovariLine extends StatefulWidget {
  const TovariLine({Key? key}) : super(key: key);

  @override
  _TovariLineState createState() => _TovariLineState();
}

class _TovariLineState extends State<TovariLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 500,
            color: Color.fromARGB(255, 40, 40, 40),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                child: Text('Лидеры продаж', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 20),),
              ),
              TypeOfProductLine(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Container(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _)=>SizedBox(width: 8,),
                    itemCount: 8,
                    itemBuilder: (context, index) => Product_Card(index),
                  ),
                ),
              ),
            ],
          ),
        ],
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Акции',
                              style: TextStyle(
                                color: Color.fromARGB(255, 40, 40, 40),
                                  fontWeight: FontWeight.w600
                              )),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(236, 135, 92, 1.0)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                            ),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12, horizontal: 28))
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.phone,
                        color: Color.fromRGBO(127, 167, 235, 1.0),),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "+(380) 98 - 359 -74 -68",
                        style: TextStyle(
                          color: Color.fromRGBO(127, 167, 235, 1.0),
                        ),
                      ),
                      SizedBox(
                        width: 15,
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
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Color.fromRGBO(127, 167, 235, 1.0),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                decoration: BoxDecoration(
                  color: Color.fromRGBO(45, 52, 67, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Поиск товаров',
                        style: TextStyle(
                          color: Color.fromRGBO(250, 252, 255, 0.48),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 420,
                      height: 32,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Icon(
                          Icons.search,
                          color: Color.fromRGBO(138, 157, 191, 1.0),
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          MyFlutterApp.heart,
                          color: Color.fromRGBO(157, 192, 255, 1.0),
                          size: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Color.fromRGBO(157, 192, 255, 1.0),
                          size: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          MyFlutterApp.user,
                          color: Color.fromRGBO(92, 144, 236, 1.0),
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ])
                ],
              )
            ],
          ),

      ]),
    );
  }
}
