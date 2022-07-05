import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI Succinctly'),
        ),
        body: Center(
            child: Text(
          'Our first Flutter layout',
          style: TextStyle(fontSize: 24),
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            print('Oh, it is cold outside...');
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.indigo, // TODO: does not work
        accentColor: Colors.amber,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
