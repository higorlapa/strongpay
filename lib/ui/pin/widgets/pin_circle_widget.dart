import 'package:flutter/material.dart';

class PinCircleWidget extends StatelessWidget {
  final String value;

  PinCircleWidget({this.value})
      : assert(value != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 20,
      height: 20,
      decoration: new BoxDecoration(

        border: Border.all(
        color: value.isEmpty ?  Colors.black : Colors.white ,
      ),
        shape: BoxShape.circle
    ));
  }
}
