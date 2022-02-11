import 'dart:math';
import 'package:flutter/material.dart';

void main()  => runApp(MyApp());

class MyApp extends StatefulWidget  {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  String random = Random().nextInt(100).toString();
  bool rndColor = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
         body: Center(
           child: Container(
             height: 100,
             width: 100,
             color: rndColor ? Colors.red : Colors.green,
             child: Center(
               child: Text(random,
               style: const TextStyle(
                 color: Colors.white,
                 fontSize: 24,
                ),
               ),
             ),
           ),
          ),
          floatingActionButton: FloatingActionButton(
             onPressed: (){
               setState(() {
                 random = Random().nextInt(100).toString();
                 rndColor = !rndColor;
                 print(random);
               });
             },
            child: const Icon(Icons.replay_outlined),
          ),
      )
    );
  }
}