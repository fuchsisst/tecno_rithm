import 'package:flutter/material.dart';

class AdsListTabSelector extends StatefulWidget {
  const AdsListTabSelector({Key? key}) : super(key: key);

  @override
  _AdsListTabSelectorState createState() => _AdsListTabSelectorState();
}

class _AdsListTabSelectorState extends State<AdsListTabSelector>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  void setState(VoidCallback fn) {
    controller!.index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: 600,
        color: Color.fromARGB(255, 28, 28, 28),
      ),
      Container(
        height: 400,
        child: TabBarView(
          controller: controller,
          children: <Widget>[
            Image.asset(
              'assets/images/Ads.png',
              scale: 0.84,
            ),
            Image.asset(
              'assets/images/Ads1.jpg',
              scale: 0.84,
            ),
            Image.asset(
              'assets/images/Ads2.jpg',
              scale: 0.84,
            ),
            Image.asset(
              'assets/images/Ads3.jpg',
              scale: 0.84,
            ),
            Image.asset(
              'assets/images/Ads4.jpg',
              scale: 0.84,
            ),
          ],
        ),
      ),
      TabPageSelector(
        controller: controller,
        color: Colors.indigo,
        selectedColor: Colors.lightBlue,
      ),
    ]);
  }
}
