import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MaterialApp'),
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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: new ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "id": "01",
      "name": "dnyaneshwar wakshe ",
      "class": "SYMCA",
      "college": "VIT , Pune"
    },
    {
      "id": "02",
      "name": "Aarush Babbar",
      "class": "SYMCA",
      "college": "VIT , Pune"
    },
    {
      "id": "03",
      "name": "Abrar Alsam",
      "class": "SYMCA",
      "college": "VIT , Pune"
    },
    {
      "id": "04",
      "name": "Satyam Chaurasiya",
      "class": "SYMCA",
      "college": "VIT , Pune"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //====================== List View is here ===========================
      body: Container(
        child: ListView.separated(
          // To add separation line between the ListView
          separatorBuilder: (context, index) => Divider(color: Colors.grey),

          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              trailing: Text(products[index]["id"]),
              title: Text(products[index]["name"]),
            );
          },
        ),
      ),
    );
  }
}
