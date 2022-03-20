import 'package:burc_deneme/burc_item.dart';
import 'package:burc_deneme/data/strings.dart';
import 'package:burc_deneme/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar = [];

  BurcListesi(){
    tumBurclar = veriKaynaginiHazirla();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burç Listesi'),),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return BurcItem(listelenenBurc: tumBurclar[index]);
        }, 
        itemCount: tumBurclar.length),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for(int i=0; i<12; i++){
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i+1}.png";
      var burcBuyukResim = Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i+1}.png";

      Burc eklenecekBurc = Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}