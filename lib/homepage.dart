import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/latihan/layout_1.dart';
import 'package:flutter_layout/latihan/layout_2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => Layout1()));
            }, child: const Text("Layout 1")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => Layout2()));
            }, child: const Text("Layout 2"))
          ],
        )
      ),
    );
  }
}
