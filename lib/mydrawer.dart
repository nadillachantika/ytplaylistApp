import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutteryt/main.dart';
import 'package:flutteryt/playlist_video.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text("Home",style: TextStyle(fontSize: 18.0),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                  },

                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text("Flutter Tutorial",style: TextStyle(fontSize: 18.0),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> PlaylistVideo(url: "https://myyoutubeapiflutter.herokuapp.com/", title: "Flutter Tutorial",),
                    ),);
                  },

                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
