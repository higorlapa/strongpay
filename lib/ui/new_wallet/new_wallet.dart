import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class NewWalletScreen extends StatefulWidget {
  @override
  _NewWalletScreenState createState() => _NewWalletScreenState();
}

class _NewWalletScreenState extends State<NewWalletScreen> {
  bool _isObscureText = true;

  bool _isDark = false;

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "New Wallet",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: _isDark ? Colors.black : Colors.white,
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Theme(
                              data: ThemeData(
                                primaryColor:
                                    _isDark ? Colors.white : Colors.black,
                                accentColor:
                                    _isDark ? Colors.white : Colors.black,
                                hintColor:
                                    _isDark ? Colors.white : Colors.black,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 5),
                                child: TextField(
                                  controller: _emailTextController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(fontSize: 17),
                                  decoration: InputDecoration(
                                    labelText: 'E-mail',
                                    prefixIcon: Icon(Icons.person),
                                  ),
                                ),
                              ),
                            ),
                            Theme(
                                data: ThemeData(
                                    primaryColor:
                                        _isDark ? Colors.white : Colors.black,
                                    accentColor:
                                        _isDark ? Colors.white : Colors.black,
                                    hintColor:
                                        _isDark ? Colors.white : Colors.black,
                                    cursorColor: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, right: 30, left: 30, bottom: 20),
                                  child: TextField(
                                    controller: _passwordTextController,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(fontSize: 17),
                                    obscureText: _isObscureText,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.verified_user),
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.remove_red_eye),
                                          onPressed: () {
                                            setState(() {
                                              _isObscureText =
                                                  !(_isObscureText);
                                            });
                                          },
                                        ),
                                        labelText: 'Password',
                                        helperText: "Use a strong password"),
                                  ),
                                )),
                          ],
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Theme(
                              data: ThemeData(
                                primaryColor:
                                    _isDark ? Colors.white : Colors.black,
                                accentColor:
                                    _isDark ? Colors.white : Colors.black,
                                hintColor:
                                    _isDark ? Colors.white : Colors.black,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 5),
                                child: TextField(
                                  controller: _emailTextController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(fontSize: 17),
                                  decoration: InputDecoration(
                                    labelText: 'E-mail',
                                    prefixIcon: Icon(Icons.person),
                                  ),
                                ),
                              ),
                            ),
                            Theme(
                                data: ThemeData(
                                    primaryColor:
                                        _isDark ? Colors.white : Colors.black,
                                    accentColor:
                                        _isDark ? Colors.white : Colors.black,
                                    hintColor:
                                        _isDark ? Colors.white : Colors.black,
                                    cursorColor: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, right: 30, left: 30, bottom: 20),
                                  child: TextField(
                                    controller: _passwordTextController,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(fontSize: 17),
                                    obscureText: _isObscureText,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.verified_user),
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.remove_red_eye),
                                          onPressed: () {
                                            setState(() {
                                              _isObscureText =
                                                  !(_isObscureText);
                                            });
                                          },
                                        ),
                                        labelText: 'Password',
                                        helperText: "Use a strong password"),
                                  ),
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 40,
                child: RaisedButton(
                  child: Text('Create wallet',
                      style: TextStyle(
                          fontSize: 20,
                          color: _isDark ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    //handle wallet creation
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      side: BorderSide(color: Colors.yellow)),
                  color: Colors.yellow,
                  textColor: Colors.white,
                ),
              ),
            )
          ],
        ));
  }

  Widget _buildCoinContainer({
    Icon icon,
    String name,
    String price,
  }) {}

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final Brightness brightnessValue =
          MediaQuery.of(context).platformBrightness;
      setState(() {
        _isDark = brightnessValue == Brightness.dark;
      });
    });
  }
}
