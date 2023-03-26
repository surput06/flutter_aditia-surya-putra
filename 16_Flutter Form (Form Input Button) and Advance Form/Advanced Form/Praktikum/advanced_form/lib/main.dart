import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interative Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Interactive Widger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Membuat variabel
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Card(
        child: Column(
          //untuk aligment di mulai dari kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //aligment spasi di antara widget
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Date"),
                TextButton(
                    //Fungsi Date Picker
                    onPressed: () async {
                      final selectDate = await showDatePicker(
                          context: context,
                          initialDate: currentDate,
                          firstDate: DateTime(1990),
                          lastDate: DateTime(currentDate.year + 5));
                      setState(() {
                        if (selectDate != null) {
                          _dueDate = selectDate;
                        }
                      });
                    },
                    child: const Text("Select")),
              ],
            ),
            //menampilkan hasil tanggal yang dipih
            Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
            const SizedBox(height: 10),
            const Text("Color"),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: double.infinity,
              color: _currentColor,
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(_currentColor),
                ),
                child: const Text("Pick Color"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Pick Your Color'),
                          content: BlockPicker(
                              pickerColor: _currentColor,
                              onColorChanged: (color) {
                                setState(() {
                                  _currentColor = color;
                                });
                              }),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Save'))
                          ],
                        );
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
