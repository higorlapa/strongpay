import 'package:flutter/material.dart';
import 'package:strongpay/models/coin_model.dart';

class CoinBalanceWidget extends StatelessWidget {

  final CoinModel coinModel;

  CoinBalanceWidget({this.coinModel}) : assert(coinModel != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 30,
              height: 30,
              child: coinModel.image,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    coinModel.name,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "\$ 20.00",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    "BTC 0.0004",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
