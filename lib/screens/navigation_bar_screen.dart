import 'package:flutter/material.dart';
import '../screens/profile_wallets_screen.dart';
import '../screens/exchange_screen.dart';
import '../screens/wallet_active_list.dart';

class NavigationBarScreen extends StatefulWidget {
  
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  final List<Widget> _pages = [
     WalletActiveList(), ExchangeScreen(), ProfileWalletsScreen(),
  ];
  Color selected;
  Color notSelected = Colors.grey;
  int _selectPageIndex = 0;

  void _selectPage(int index){
    setState(() {
        _selectPageIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    selected = Theme.of(context).accentColor;
    return Scaffold(
      body: _pages[_selectPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectPageIndex,
        items: [
          BottomNavigationBarItem(
           icon: Icon(
             Icons.account_balance_wallet,
           ),
           title: Text('_'),
         ),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.repeat,
          ),
          title: Text('_'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          title: Text('_'),
        ),
        ],
      ),
    );
  }
}
// BottomNavigationBar(
//       backgroundColor: Theme.of(context).primaryColor,
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.account_balance_wallet,
//             color: index == 0 ? selected : notSelected,
//           ),
//           title: Text('*'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.repeat,
//             color: index == 1 ? selected : notSelected,
//           ),
//           title: Text('*'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.person,
//             color: index == 2 ? selected : notSelected,
//           ),
//           title: Text('*'),
//         ),
//       ],
//       currentIndex: index,
//       onTap: (value) {
//         index = value;
//         if(value == 0){
//           Navigator.of(context).pop();
//         }
//         else
//         selectProfile(context);
//       },
//     );