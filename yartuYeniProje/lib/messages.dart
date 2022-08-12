import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yartuyeniproje/folders.dart';
import 'package:yartuyeniproje/navBar.dart';

import 'appbar.dart';
import 'dashboard.dart';
import 'details.dart';
import 'settings.dart';

void main() => runApp(messages());

class messages extends StatefulWidget {
  static const appTitle = 'Messages';

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: messages.appTitle,
      home: MyHomePage(title: messages.appTitle),
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
                  AssetImage(
                    "resimler/mail.png",
                  ),
                  color: Colors.blueGrey,
                ),
                title:
                    Text("Dashboard", style: TextStyle(color: Colors.blueGrey)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => dashboard()));
                },
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        ),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage("resimler/ikinciIcon.png"),
                        color: Colors.blue,
                      ),
                      title: Text("Messages",
                          style: TextStyle(color: Colors.blue)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => messages()));
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
                  )],
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("resimler/ucuncu.png"),
                  color: Colors.blueGrey,
                ),
                title: Text("Details"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => details()));
                },
              ),
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
            Text('There is no data'),
            Spacer(),
            navBar(),
          ],
        ),
      ),
    );
  }
}
