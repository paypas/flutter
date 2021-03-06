class Autogenerated {
  List<Home> result;

  Autogenerated({this.result});

  factory Autogenerated.fromJson(Map<String, dynamic> json) {
//    if (json['result'] != null) {
//      result = new List<Home>();
//      json['result'].forEach((v) {
//        result.add(new Home.fromJson(v));
//      });
//    }
    var listResult = json["result"] as List;
    var iterableArticles = listResult.map((resul) {
      return Home.fromJson(resul);
    });
    var articles = List<Home>.from(iterableArticles);
    return Autogenerated(
        result: articles
    );
  }

  @override
  String toString() {
    return 'Sample{ results: $result}';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Home {
  String namaPaket;
  String lokasiPaket;
  String hargaBawah;
  String fotoPaket;
  String kota;
  String provinsi;
  String noPaket;

  Home._(
      {this.namaPaket,
        this.lokasiPaket,
        this.hargaBawah,
        this.fotoPaket,
        this.kota,
        this.provinsi,
        this.noPaket});

  factory Home.fromJson(Map<String, dynamic> json) {
    return Home._(
        namaPaket: json['namaPaket'],
        lokasiPaket: json['lokasiPaket'],
        hargaBawah: json['hargaBawah'],
        fotoPaket: json['fotoPaket'],
        kota: json['kota'],
        provinsi: json['provinsi'],
        noPaket: json['no_paket']
    );
  }

  String toString(){
    return namaPaket;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['namaPaket'] = this.namaPaket;
    data['lokasiPaket'] = this.lokasiPaket;
    data['hargaBawah'] = this.hargaBawah;
    data['fotoPaket'] = this.fotoPaket;
    data['kota'] = this.kota;
    data['provinsi'] = this.provinsi;
    data['no_paket'] = this.noPaket;
    return data;
  }
}