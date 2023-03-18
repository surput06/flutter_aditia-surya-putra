void main() {
  //membuat object bangun ruang dari Class BangunRuang
  BangunRuang bangunRuang = BangunRuang();
  //membuat object kubus dari Class Kubus lalu memasukan argument pada parameter
  Kubus kubus = Kubus(sisi: 5);
  //membuat object balok dari Class Balok lalu memasukan argument pada parameter
  Balok balok = Balok(lebar: 5, tinggi: 2, panjang: 5);
  //Mereturn Method Volume yang telah di overriding di object kubus
  print(kubus.volume());
  //Mereturn Method Volume yang telah di overriding di object balok
  print(balok.volume());
}

//Membuat Superclass BangunRuang dengan property-nya
class BangunRuang {
  int panjang = 0;
  int lebar = 0;
  int tinggi = 0;
  // membuat method volume
  volume() {
    return lebar * panjang * tinggi;
  }
}

//membuat class Kubus yang extends ke kelas BangunRuang
class Kubus extends BangunRuang {
  int sisi;
  Kubus({required this.sisi});
  //override method volume
  @override
  volume() {
    return sisi * sisi * sisi;
  }
}

//membuat class Balok yang extends ke kelas BangunRuang
class Balok extends BangunRuang {
  int panjang;
  int lebar;
  int tinggi;
  Balok({required this.lebar, required this.tinggi, required this.panjang});
  //override method volume
  @override
  volume() {
    return lebar * panjang * tinggi;
  }
}
