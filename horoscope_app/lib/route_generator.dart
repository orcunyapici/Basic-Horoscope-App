import 'package:burc_deneme/burc_detay.dart';
import 'package:burc_deneme/burc_listesi.dart';
import 'package:burc_deneme/model/burc.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenerator(RouteSettings settings){
    
    switch(settings.name){

      case '/':
      return MaterialPageRoute(builder: (context) => BurcListesi());

      case '/burcDetay':
      final secilen = settings.arguments as Burc;

      return MaterialPageRoute(builder: (context) => BurcDetay(secilenBurc: secilen));
    }
  }
}