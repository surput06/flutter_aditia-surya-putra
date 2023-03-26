import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
      //mengubah thema jadi dark
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      //navbar degnan tittle cuppertinoAPP
      navigationBar: CupertinoNavigationBar(
        middle: Text("CuppertinoApp"),
      ),
      //Membuat child dengan text This is CuppertinoApp
      child: Center(
        child: Text("This is CupertinoApp"),
      ),
    );
  }
}
