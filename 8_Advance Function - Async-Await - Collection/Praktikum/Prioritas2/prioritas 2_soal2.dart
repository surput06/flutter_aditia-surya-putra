void main() {
  //Deklarasi list beserta nilai nya
  List list = [7, 5, 3, 5, 2, 1];
  //Deklarasi variabel Hasil Penjumlahan yang digunakan untuk looping
  int hasilPenjumlahan = (0);
  //fungsi looping menjumlahakan isi list
  for (int lists in list) {
    hasilPenjumlahan += lists;
  }
  //fungsi hasil penjumlahan dibagi banyak nya list (rata-rata)
  double fungsi() {
    return hasilPenjumlahan / list.length;
  }

  //memanggil fungsi dan mengubah menjadi bilangan bulat keatas menggunaka ceil
  print((fungsi()).ceil());
}
