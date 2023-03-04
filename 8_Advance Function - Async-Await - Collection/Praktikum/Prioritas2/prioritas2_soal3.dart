void main() async {
  //menampilkan fungsi dan input nilai
  //menggunakan await supaya menunggu fungsi selesai terlebih dahulu
  print(await fungsi(5));
}

//fungsi faktorial dengan async
Future<int> fungsi(int nilai) async {
  // deklarasi varibel faktor
  int faktor = (1);
  //looping nilai
  for (int i = 1; i <= nilai; i++) {
    faktor *= i;
  }
//return faktor
  return faktor;
}
