import 'package:flutter/material.dart';

typedef void OnTapHandler(String result);

class NumericKeyBoardWidget extends StatefulWidget {
  final OnTapHandler onTapHandler;

  NumericKeyBoardWidget({this.onTapHandler}) : assert(onTapHandler != null);

  @override
  _NumericKeyBoardWidgetState createState() =>
      _NumericKeyBoardWidgetState(onTapHandler: this.onTapHandler);
}

class _NumericKeyBoardWidgetState extends State<NumericKeyBoardWidget> {
  final OnTapHandler onTapHandler;

  _NumericKeyBoardWidgetState({this.onTapHandler})
      : assert(onTapHandler != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width,
      color: Color(0xffffd600),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildNumberColumn([1, 4, 7]),
          _buildNumberColumn(
            [2, 5, 8],
            isLastOne: true,
            lastOneValue: "0",
          ),
          _buildNumberColumn([3, 6, 9],
              isLastOne: true, lastOneValue: Icon(Icons.backspace)),
        ],
      ),
    );
  }

  Column _buildNumberColumn(List<int> values,
      {isLastOne = false, lastOneValue}) {
    List<Widget> textWidgetList = List();
    values.forEach((number) {
      textWidgetList.add(Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: FlatButton(
          onPressed: () {
            onTapHandler(number.toString());
          },
          child: Text(number.toString(), style: TextStyle(fontSize: 30)),
        ),
      ));
    });
    if (isLastOne) {
      textWidgetList.add(GestureDetector(
        onTap: () {
          if (lastOneValue is Icon) {
            onTapHandler("delete");
          } else
            onTapHandler(lastOneValue);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: lastOneValue is Icon
              ? lastOneValue
              : Text(
                  lastOneValue,
                  style: TextStyle(fontSize: 30),
                ),
        ),
      ));
    }

    return Column(mainAxisSize: MainAxisSize.max, children: textWidgetList);
  }
}
