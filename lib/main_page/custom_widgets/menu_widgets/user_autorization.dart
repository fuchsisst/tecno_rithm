import 'package:flutter/material.dart';
import 'package:tecno_rithm/autorization/sing_in.dart';
import 'package:tecno_rithm/main_page/assets/custom_icons.dart';

class UserAutorization extends StatelessWidget {
  const UserAutorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => Login(),
          );
        },
        icon: Icon(
          IconPack1.user,
          color: Color.fromRGBO(92, 144, 236, 1.0),
          size: 25,
        ),
      ),
    );
  }
}
