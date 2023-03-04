void main() async {
  //Print fungsi pengali dan input paramater list dan pengali
  print(await Pengali([1, 3, 5, 7, 9], 10));
}

//fungsi pengali
Future<List> Pengali(List list, int pengali) async {
  print("List sebelum Dikali");
  print(list);
//list untuk mereturn hasilkali
  List result = [];
//fungsi future delayed untuk mendelay fungsi selama 1 detik
  await Future.delayed(Duration(seconds: 1), () {
    //fungsi looping unuk mengali list dengan pengali
    for (int lists in list) {
      int hasilKali = lists * pengali;
      //result.add untuk memasukan hasil looping ke dalam list result sehingga
      //dapat direturn dalam bentuk list
      result.add(hasilKali);
    }
  });

  print("List Sesudah dikali");
//return result
  return result;
}
