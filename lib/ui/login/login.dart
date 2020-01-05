import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:strongpay/ui/new_wallet/new_wallet.dart';
import 'package:strongpay/utils/enter_exit_route.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('images/logo_yellow_strongpay_clean.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Welcome to StrongPay',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Text(
                      'The Official SHND and SHMN Mobile Wallet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey ,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 40,
                  child: RaisedButton(
                    child: Text('Create a wallet',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          EnterExitRoute(
                              exitPage: LoginScreen(),
                              enterPage: NewWalletScreen()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.yellow)),
                    color: Colors.yellow,
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'I already have a wallet',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
