import 'dart:io';

//membuat class calculator dengan property nya
class calculator {
  int bilanganSatu = 0;
  int bilanganDua = 0;
//method penjumlahan
  int Penjumlahan({required int bilanganSatu, required int bilanganDua}) {
    stdout.write("$bilanganSatu + $bilanganDua = ");
    return bilanganSatu + bilanganDua;
  }

//method penguran
  int Pengurangan({required int bilanganSatu, required int bilanganDua}) {
    stdout.write("$bilanganSatu - $bilanganDua = ");
    return bilanganSatu - bilanganDua;
  }

//method perkalian
  int Perkalian({required int bilanganSatu, required int bilanganDua}) {
    stdout.write("$bilanganSatu x $bilanganDua = ");
    return bilanganSatu * bilanganDua;
  }

//method pembagian
  double Pembagian({required int bilanganSatu, required int bilanganDua}) {
    stdout.write("$bilanganSatu : $bilanganDua = ");
    return bilanganSatu / bilanganDua;
  }
}

void main() {
  //membuat objek calculator
  calculator p1 = calculator();
  //memanggil method penjumlahan, pengurangan , perkalian, dan pemabagian
  print(p1.Penjumlahan(bilanganSatu: 1, bilanganDua: 2));
  print(p1.Pengurangan(bilanganSatu: 4, bilanganDua: 2));
  print(p1.Perkalian(bilanganSatu: 1, bilanganDua: 2));
  print(p1.Pembagian(bilanganSatu: 4, bilanganDua: 2));
}
