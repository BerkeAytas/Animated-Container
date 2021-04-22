import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int puan = 0;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(puan.toString()),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
            puan++;
          });
        },
        child: AnimatedContainer(
          alignment: selected ? Alignment.bottomCenter : Alignment.topCenter,
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 600),
          child: Container(
            color: Colors.black,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
