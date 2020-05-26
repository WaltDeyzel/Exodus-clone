import 'package:flutter/cupertino.dart';

class Crypto{
  final String id;
  final String name;
  final double currentPrice;
  final double holdings;
  bool active;
  //double value;

  Crypto({
    @required this.id,
    @required this.name,
    @required this.currentPrice,
    @required this.holdings,
    this.active = false,
    //this.value = this.holdings*this.currentPrice;
  });

  void changeState(){
    if(active)
    active=false;
    else
    active = true;
  }

  void setState(bool val) {active = val;}

  // bool activate(){
  //   if(active) active = false;
  //   if(!active) active = true;
  //   return active;
  // }
  // bool getWalletSate(){
  //   return active;
  // }
}