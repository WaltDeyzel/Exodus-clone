import 'package:flutter/material.dart';

class NewWallet extends StatefulWidget {

  final Function _addWallet;

  NewWallet(this._addWallet);

  @override
  _NewWalletState createState() => _NewWalletState();
}

class _NewWalletState extends State<NewWallet> {
  String inputName;
  String inputToAdd;
  String inputCost;
  String inputCurrentPrice;

  void submitData(){
    final String walletName = inputName;
    final double amount = double.parse(inputToAdd);
    final double cost = double.parse(inputCost);
    final double currentPrice = 20000.0;
    if(walletName.isEmpty || amount < 0 || cost < 0 || currentPrice < 0){
      return;
    }
    widget._addWallet(walletName, amount, cost, currentPrice);
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: 'Name of Crypto Wallet',
          ),
          onChanged: (typing) => inputName = typing,
          onSubmitted: (_) => submitData(),
        ), //Name of new Crypro

        TextField(
          decoration: InputDecoration(
            labelText: 'Amount to add',
          ),
          keyboardType: TextInputType.number,
          onChanged: (typing) => inputToAdd = typing,
          onSubmitted: (_) => submitData(),
        ), // Amount bought

        TextField(
          decoration: InputDecoration(
            labelText: 'Cost',
          ),
          keyboardType: TextInputType.number,
          onChanged: (typing) => inputCost = typing,
          onSubmitted: (_) => submitData(),
        ), // Price at which you bought

        FlatButton(
          child: Text(
            'Add Wallet',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          onPressed: () => submitData(),
        ),
      ],
    );
  }
}
