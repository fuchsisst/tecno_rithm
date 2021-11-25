import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 135, 92, 1.0),
              ),
              child: Center(
                child: Text(
                  'Каталог товаров',
                  style: TextStyle(
                    fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 40, 40, 40)),
                ),
              ),
            ),
          Column(
            children: [
              ListTile(
                title: const Text('Смартфоны и телефоны', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Телевизоры', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Ноутбуки', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Планшеты', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Наушники и акустика', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Гаджеты', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Товары для дома', style: TextStyle(color: Colors.white70)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
