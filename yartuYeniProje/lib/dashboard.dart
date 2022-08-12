import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yartuyeniproje/anaSayfa.dart';
import 'package:yartuyeniproje/details.dart';
import 'package:yartuyeniproje/folders.dart';
import 'package:yartuyeniproje/messages.dart';
import 'package:yartuyeniproje/navBar.dart';
import 'package:yartuyeniproje/settings.dart';

import 'appbar.dart';

void main() => runApp(dashboard());

class dashboard extends StatefulWidget {
  static const appTitle = 'Dashboard';

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: dashboard.appTitle,
      home: MyHomePage(title: dashboard.appTitle),
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
             Stack(
               children:
               [Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],

                ),
                child: ListTile(
                  leading: ImageIcon(
                    AssetImage("resimler/mail.png"),
                    color: Colors.blue,
                  ),
                  title: Text("Dashboard", style: TextStyle(color: Colors.blue)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));
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
                leading: ImageIcon(AssetImage("resimler/ikinciIcon.png")),
                title: Text("Messages"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => messages()));
                },
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Folders',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1 November 2021 • 14.55',
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                'Yartu Ui',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0) //
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1 November 2021 • 14.55',
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                'Yartu Ui',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0) //
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1 November 2021 • 14.55',
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                'Yartu Ui',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0) //
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 November 2021 • 14.55',
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Yartu Ui',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 170,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0) //
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 November 2021 • 14.55',
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Yartu Ui',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 170,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0) //
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 November 2021 • 14.55',
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Yartu Ui',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 170,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0) //
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          navBar(),
        ],
      ),
    );
  }
}
