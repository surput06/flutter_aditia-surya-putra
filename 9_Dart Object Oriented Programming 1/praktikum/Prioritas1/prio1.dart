//Membuat Class hewan
class Hewan {
  //property hewan
  int berat;
  Hewan({required this.berat});
}

//Membuat class Mobil
class Mobil {
  //propety mobil
  int kapasitas = 200;
  List muatan = [];
  //method tambahMuatan
  tambahMuatan(Hewan hewan) {
    if (kapasitas > hewan.berat) {
      muatan.add(hewan);
      print("Hewan Ditambahkan");
    } else {
      print("Muatan Penuh");
    }
  }
}

void main() {
  // Insiasi objek mobil
  Mobil mobil = Mobil();
  // Inisiasi objek h1 dengan berat 50
  Hewan h1 = Hewan(berat: 50);
  //memanggil fungsi tambahmuatan h1
  mobil.tambahMuatan(h1);
  // Inisiasi objek h1 dengan berat 50
  Hewan h2 = Hewan(berat: 200);
  //memanggil fungsi tambahmuatan h2
  mobil.tambahMuatan(h2);
}
