import 'package:flutter/material.dart';

class ExchangeScreen extends StatelessWidget {
  static const routeName = '/exchange-screen';
  @override
  Widget build(BuildContext context) {
    final space = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          color: Theme.of(context).primaryColor,
      height: space,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: space * 0.2,
            child: Center(
              child: Text('EXCHANGE'),
            ),
          ),
          Container(
            height: space * 0.55,
          ),
          SizedBox(
            height: space * 0.15,
            child: Center(
              child: Text('1 LTC = 0.20903944 ETH'),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
