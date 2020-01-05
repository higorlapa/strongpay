import 'package:flutter/material.dart';
import 'package:strongpay/models/coin_model.dart';

class CoinBalanceWidget extends StatelessWidget {

  final CoinModel coinModel;

  CoinBalanceWidget({this.coinModel}) : assert(coinModel != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 20,
              height: 20,
              child: coinModel.image,
            ),
          )
        ],
      ),
    );
  }
}
