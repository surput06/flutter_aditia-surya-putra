void main() {
  //list dengan element list dengan 2 sub element
  List list = [
    [1, 2],
    [3, 4]
  ];
  //Akhir List

  //Map Kosong
  Map map = {};
  //Akhir Map kosong

  // Mengambil isi map dari list
  for (var item in list) {
    map[item[0]] = item[1];
  }
  // Akhir Mengambil isi map dari list

  //Menampilkan List dengan index dan Hasil map dengin isi dari list
  print("List");
  print(list[0][0]);
  print(list[0][1]);
  print(list[1][0]);
  print(list[1][1]);
  print("Map Dari List");
  print(map);
}
  //akhir tampilan
