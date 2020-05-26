import 'package:flutter/material.dart';
import '../data.dart';

class ProfileWalletsScreen extends StatefulWidget {
  static const routeName = '/profile-wallets-screen';

  @override
  _ProfileWalletsScreenState createState() => _ProfileWalletsScreenState();
}

class _ProfileWalletsScreenState extends State<ProfileWalletsScreen> {
  void activateWallet(wallet){
    setState(() {
      wallet.activate();
    });
  }
  @override
  Widget build(BuildContext context) {
    //final mediaQ = MediaQuery.of(context);
    //final availibleSpace = mediaQ.size.height - mediaQ.padding.top-25;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //LIS OF ALL THE WALLETS
            SizedBox(
              height: 300,
              child: Center(
                child: Text(
                  'Choose you Wallets',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            ...wallets.map((e) {
              return Card(
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                  title: Text(
                    e.name,
                    style: TextStyle(color: Colors.grey),
                  ),
                  subtitle: Text(
                    e.id,
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Switch(
                    value: e.active,
                    onChanged: (val) {
                      setState(() {
                        e.setState(val);
                      });
                    },
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
