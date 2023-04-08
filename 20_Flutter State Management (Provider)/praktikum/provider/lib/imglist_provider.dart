import 'package:flutter/material.dart';

//membuat class list provider dengan change notifier
class ImgListProvider extends ChangeNotifier {
  //membuat list untuk gambar dalam galeri
  List imglist = [
    'assets/Keqing.png',
    'assets/Zhongli.png',
    'assets/Fischl.png',
    'assets/Nahida.png',
  ];
}
