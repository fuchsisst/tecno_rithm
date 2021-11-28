import 'package:flutter/material.dart';
import 'package:tecno_rithm/global_constans/color_constans.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Container(
        decoration: BoxDecoration(
            color: NeutralGrey,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WELCOME, USER!',
                      style: TextStyle(
                          fontSize: 35,
                          color: White70,
                          fontWeight: FontWeight.w700)),
                  Image.asset(
                    'assets/images/hi.png',
                    scale: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Login or E-mail',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot you password?',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[Text('Sign up')],
                          ))),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('You don\'t have an account?'),
                      TextButton(
                        child: Text('Sign Up'),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
