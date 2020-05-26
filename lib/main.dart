import 'package:flutter/material.dart';
import './screens/navigation_bar_screen.dart';
import './screens/exchange_screen.dart';
import './screens/profile_wallets_screen.dart';
import './screens/wallet_info_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      //home: WalletActiveList(),
      theme: ThemeData(
        accentColor: Colors.purple,
        primaryColor: Color.fromARGB(255, 31, 32, 51),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(color: Colors.white),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
        ),
      ),
      routes: {
        '/' : (ctx)=> NavigationBarScreen(),
        ExchangeScreen.routeName: (ctx) => ExchangeScreen(),
        ProfileWalletsScreen.routeName: (ctx) => ProfileWalletsScreen(),
        WalletInfoScreen.routeName: (ctx)=> WalletInfoScreen(),
        },
    );
  }
}