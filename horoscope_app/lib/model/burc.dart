class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;


  String get burcAdi => this._burcAdi;
  String get burcTarihi => this._burcTarihi;
  String get burcDetayi => this._burcDetayi;
  String get burcKucukResim => this._burcKucukResim;
  String get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim, this._burcBuyukResim);

  @override
  String toString() {

    return "Burç adı: $_burcAdi, Küçük resim: $_burcKucukResim, Büyük resim: $_burcBuyukResim";
    
  }
  
}