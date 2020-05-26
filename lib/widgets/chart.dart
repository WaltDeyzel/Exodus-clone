import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    print(height.toString());
    return Column(children: <Widget>[
      SizedBox(height: 35,),
      CircleAvatar(radius: 80,backgroundColor: Theme.of(context).accentColor,),
    ],);
  }
}
