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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      height: 400,
      child: Stack(children: <Widget>[
        Container(
          height: 400,
          width: double.infinity,
          child: TabBarView(
            controller: controller,
            children: <Widget>[
              FittedBox(
                child: Image.asset(
                  'assets/images/Ads.png',
                ),
                  fit: BoxFit.cover
              ),
              FittedBox(
                child: Image.asset(
                  'assets/images/Ads1.jpg',
                  scale: 0.84,
                ),
                  fit: BoxFit.cover
              ),
              FittedBox(
                child: Image.asset(
                  'assets/images/Ads2.jpg',
                  scale: 0.84,
                ),
                  fit: BoxFit.cover
              ),
              FittedBox(
                child: Image.asset(
                  'assets/images/Ads3.jpg',
                  scale: 0.84,
                ),
                  fit: BoxFit.cover
              ),
              FittedBox(
                child: Image.asset(
                  'assets/images/Ads4.jpg',
                  scale: 0.84,
                ),
                  fit: BoxFit.cover
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.bottomCenter,
          child: TabPageSelector(
            controller: controller,
            color: Color.fromRGBO(28, 28, 28, 1.0),
            selectedColor: Color.fromRGBO(157, 192, 255, 1.0),
          ),
        ),
      ]),
    );
  }
}
