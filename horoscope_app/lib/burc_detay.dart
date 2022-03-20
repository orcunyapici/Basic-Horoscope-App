import 'package:burc_deneme/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarRenginiBul();
    WidgetsBinding.instance!
    .addPostFrameCallback((_) => appBarRenginiBul());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset("images/${widget.secilenBurc.burcBuyukResim}", fit: BoxFit.cover),
            ),
          ),
    
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child:  Text(widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.subtitle1,
                ),
          ),
            ),
          ),
          
        ],
      ),
    );
  }

  void appBarRenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appbarRengi = _generator.dominantColor!.color;
    setState(() {
      
    });
    print(appbarRengi);
  }
}