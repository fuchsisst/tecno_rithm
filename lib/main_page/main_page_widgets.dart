import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tecno_rithm/global_constans/color_constans.dart';
import 'package:tecno_rithm/main_page/custom_widgets/footer/card_services.dart';
import 'package:tecno_rithm/main_page/custom_widgets/product_card/card_product.dart';

import 'assets/custom_icons.dart';
import 'custom_widgets/ads_list/ads_tabrageselector.dart';
import 'custom_widgets/footer/constants_footer/constans_footer.dart';
import 'custom_widgets/menu_widgets/catalog.dart';
import 'custom_widgets/menu_widgets/drawer_menu.dart';
import 'custom_widgets/menu_widgets/search/search_line_wifget.dart';
import 'custom_widgets/menu_widgets/user_autorization.dart';
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
      drawer: Menu(),
      body: Container(
        height: size.height,
        width: size.width,
        color: DarkGrey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomAppBar(),
              AdsListTabSelector(),
              TovariLine(),
              TovariLineNew(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
      height: 1600,
      color: NeutralGrey,
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CardServices(textContent[0], MyFlutterApp.fast_delivery),
                CardServices(textContent[1], MyFlutterApp.secure),
                CardServices(
                    textContent[2], MyFlutterApp.wallet_filled_money_tool),
                CardServices(textContent[3], MyFlutterApp.go_back_arrow)
              ]),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Container(
                  height: 35,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 28, 28, 28),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12),
                    child: Text(
                      'E-mail:',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 32,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Подписаться',
                          style: TextStyle(
                              color: Color.fromARGB(255, 40, 40, 40),
                              fontWeight: FontWeight.w800)),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(236, 135, 92, 1.0)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 28))),
                    ),
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Компанія\nПро компанію\n\nІнформація про продавця\n\nГрупа компаній Фокстрот\n\nВідділ корпоративного продажу\n\nВакансії\n\nТендери\n\nНовини Фокстрот\n\nТорговельна нерухомість\n\nРебрендинг Фокстрот\n\nСоціальний проект\n\nКонтакти прес-служби\n\nУмови використання сайту\n\nПолітика конфіденційності',
                  style: TextStyle(color: Colors.white30),
                ),
                Text(
                  'Покупцям\nАдреси магазинів «Фокстрот»\n\nПартнери\n\nОплата\n\nПовернення товару\n\nДоставка\n\nБлог\n\nАкції\n\nПослуги «Екстра-Сервіс»\n\nСервісна мережа\n\nФоксFan\n\nПодарункові картки\n\nБренди\n\nРозпродаж',
                  style: TextStyle(color: Colors.white30),
                ),
                Text(
                  'Контакти\nРежим роботи магазинів\nНаші магазини по всій Україні\n\nІнформаційна служба:\n0 800 300-353\nБезкоштовно зі стаціонарних і\nмобільних телефонів в Україні\n\nEmail: info@foxtrot.com.ua\n\n\nГрафік роботи Call-Центру\nПн-Пт 08:30-21:00\nСб-Нд 08:30-21:00',
                  style: TextStyle(color: Colors.white30),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/facebook.png',
                  scale: 12,
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/images/instagram.png',
                  scale: 12,
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/images/viber.png',
                  scale: 12,
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/images/telegram.png',
                  scale: 12,
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/images/youtube.png',
                  scale: 12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TovariLineNew extends StatelessWidget {
  const TovariLineNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 450,
            color: Color.fromARGB(255, 28, 28, 28),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                child: Text(
                  'Новинки',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              TypeOfProductLine(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Container(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 8,
                    ),
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
            height: 450,
            color: NeutralGrey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                child: Text(
                  'Лидеры продаж',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              TypeOfProductLine(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Container(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 8,
                    ),
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
      color: NeutralGrey,
      height: 157,
      child: Column(children: [
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
                                color: NeutralGrey,
                                fontWeight: FontWeight.w600)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(OrangeColor),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 28))),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.phone,
                      color: Color.fromRGBO(127, 167, 235, 1.0),
                    ),
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
            Catalog(),
            SearchLine(),
            Column(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconPack1.heart,
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
                  UserAutorization(),
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
