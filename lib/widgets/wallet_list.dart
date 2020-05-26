import 'package:flutter/material.dart';
import '../data.dart';
import '../crypto.dart';
import '../screens/wallet_info_screen.dart';


class WalletList extends StatelessWidget {
  final activeWallets = wallets.where((element) {
    return element.active == true;
  }).toList();

  void selectedWalletInfoPage(Crypto wallet, BuildContext context){
    print('works');
    Navigator.of(context).pushNamed(WalletInfoScreen.routeName, arguments: wallet);
  }

  @override
  Widget build(BuildContext context) {
    //print(activeWallets[0].active);
    //final mediaQ = MediaQuery.of(context);
    return Container(
      color: Theme.of(context).primaryColor,
      //height: 350,
      child: wallets.isEmpty ? Text('No Wallets'): Column(
              children: <Widget>[
                ...activeWallets.map((element) {
                  return InkWell(
                    onTap: (){selectedWalletInfoPage(element, context);},
                    splashColor: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    child: Card(
                      elevation: 1,
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Theme.of(context).accentColor,
                        ),
                        title: Text(
                          element.id,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        subtitle: Text(
                          element.name,
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Column(
                          children: <Widget>[
                            Text(
                              'R${(element.currentPrice).toStringAsFixed(2)}',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '${(element.holdings).toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Text(
                              'R${(element.currentPrice * element.holdings).toStringAsFixed(2)}',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
    );
  }
}
