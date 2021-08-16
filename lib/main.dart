
import 'package:flutter/material.dart';

import 'mydrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Youtube API"),
        backgroundColor: Colors.deepOrange,
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/image.png"),
            fit: BoxFit.cover,
          ),

        ),
        child: Center(
          child: Text("Video Tutorial", style: TextStyle(fontSize: 25, color: Colors.deepOrangeAccent),)
          ,
        ),
      ),

    );
  }
}

