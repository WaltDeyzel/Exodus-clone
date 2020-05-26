import 'package:flutter/material.dart';
import '../crypto.dart';

class WalletInfoScreen extends StatelessWidget {
  static const routeName = '/wallet-info-screen';

  @override
  Widget build(BuildContext context) {
    Crypto wallet = ModalRoute.of(context).settings.arguments as Crypto;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: Text(wallet.name),),
      body: Column(children: <Widget>[

        Center(child:Text('Column')),
      ],),
    );
  }
}