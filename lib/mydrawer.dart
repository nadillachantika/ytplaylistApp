import 'dart:ui';

import 'package:flutter/material.dart';

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
                  title: Text("FLutter",style: TextStyle(fontSize: 18.0),),
                  onTap: (){},

                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.menu),
                  title: Text("CodeIgniter",style: TextStyle(fontSize: 18.0),),
                  onTap: (){},

                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
