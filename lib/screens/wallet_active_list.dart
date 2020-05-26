import './profile_wallets_screen.dart';
import './navigation_bar_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/chart.dart';
import '../widgets/wallet_list.dart';

class WalletActiveList extends StatelessWidget {
  //static const routeName = '/wallets-active';

  void _goToProfileWallet(BuildContext ctx){
    //Navigator.of(ctx).pushNamed(ProfileWalletsScreen.routeName);
    //selectProfileWallet();
  }
  
  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context);
    final availibleSpace = mediaQ.size.height - mediaQ.padding.top - 25;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: availibleSpace * 0.4,
              width: mediaQ.size.width,
              child: Chart(),
            ),
            //LIS OF ALL THE WALLETS
            WalletList(),
            InkWell(
              onLongPress: (){_goToProfileWallet(context);},
              splashColor: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: availibleSpace * 0.15,
                width: double.infinity,
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      'ADD WALLET',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: NavigationBar(),
    );
  }
}