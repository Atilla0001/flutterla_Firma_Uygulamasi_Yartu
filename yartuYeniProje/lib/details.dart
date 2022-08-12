import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yartuyeniproje/navBar.dart';

import 'anaSayfa.dart';
import 'appbar.dart';
import 'dashboard.dart';
import 'folders.dart';
import 'messages.dart';
import 'settings.dart';

void main() => runApp(details());

class details extends StatefulWidget {
  static const appTitle = 'Details';

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: details.appTitle,
      home: MyHomePage(title: details.appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => anaSayfa()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => dashboard()));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => details()));
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => folders()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => settings()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: SafeArea(
        child: Drawer(
          ///////////////////DRAWER///////////

          child: Column(
            children: [
              ListTile(
                leading: ImageIcon(
                  AssetImage("resimler/mail.png"),
                  color: Colors.blueGrey,
                ),
                title: Text("Dashboard"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => dashboard()));
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("resimler/ikinciIcon.png"),
                  color: Colors.blueGrey,
                ),
                title: Text("Messages"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => messages()));
                },
              ),
             Stack(
               children:
               [
                 Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],

                ),
                child: ListTile(
                  leading: ImageIcon(
                    AssetImage("resimler/ucuncu.png"),
                    color: Colors.blue,
                  ),
                  title: Text("Details", style: TextStyle(color: Colors.blue)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => details()));
                  },
                ),
              ),
                 Container(
                     width: 5,
                     height: 55,
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(8)
                     )
                 )
               ],),
              ListTile(
                leading: ImageIcon(
                  AssetImage("resimler/dorduncu.png"),
                  color: Colors.blueGrey,
                ),
                title: Text("Folders"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => folders()));
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("resimler/options.png"),
                  color: Colors.blueGrey,
                ),
                title: Text("Settings"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => settings()));
                },
              ),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appbar(),
      ),

      body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Text('There is no details'),
              ),
              Spacer(),
              navBar(),
            ],
          ),
      ),
    );
  }
}
