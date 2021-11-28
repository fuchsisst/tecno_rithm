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
              width: 20,
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
              width: 25,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14
                      ),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: DarkGrey, width: 1.0),),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1.0),
                          ),
                        labelText: 'Login or E-mail',
                          labelStyle: new TextStyle(
                              color: White54
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          fontSize: 14
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: DarkGrey, width: 1.0),),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1.0),
                          ),
                        labelText: 'Password',
                          labelStyle: new TextStyle(
                              color: White54
                          )
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () { print("tapped");},
                      child: Text(
                        'Forgot you password?', style: TextStyle(
                        color: BlueColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                      ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 35,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Sign up'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  OrangeColor),),
                        )),
                        ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('You don\'t have an account?', style: TextStyle(
                        color: White38,
                        fontWeight: FontWeight.w400
                      ),),
                      SizedBox(width: 4,),
                      InkWell(
                          onTap: () { print("tapped");},
                          child: Text('Sign Up',style: TextStyle(
                              color: BlueColor,
                              fontWeight: FontWeight.w400,
                          ),))
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
