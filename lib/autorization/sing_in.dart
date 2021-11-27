import 'package:flutter/material.dart';
import 'package:tecno_rithm/global_constans/color_constans.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkGrey,
      appBar: AppBar(backgroundColor: DarkGrey, elevation: 0,),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: NeutralGrey,
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          height: MediaQuery.of(context).size.height/1.5,
          width: MediaQuery.of(context).size.width/2,
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Text('WELCOME, USER!', style: TextStyle(fontSize: 40, color: OrangeColor, fontWeight: FontWeight.w700)),
                  Image.asset('assets/images/hi.png', scale: 2,),
                ],
              ), Column(children: <Widget>[
                    Container(height: 30, width: 80,child: ElevatedButton(onPressed: (){}, child: Row(children: <Widget>[Text('Sign in')],))),
                    Container(height: 30, width: 80,child: ElevatedButton(onPressed: (){}, child: Row(children: <Widget>[Text('Sign up')],)))
                  ],),
            ],
          ),
        ),
      ),
    );
  }
}
