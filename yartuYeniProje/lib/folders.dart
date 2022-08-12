import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yartuyeniproje/anaSayfa.dart';
import 'package:yartuyeniproje/navBar.dart';

import 'appbar.dart';
import 'dashboard.dart';
import 'details.dart';
import 'messages.dart';
import 'settings.dart';

void main() => runApp(folders());

class folders extends StatefulWidget {
  static const appTitle = 'Folders';

  @override
  State<folders> createState() => _foldersState();
}

class _foldersState extends State<folders> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: folders.appTitle,
      home: MyHomePage(title: folders.appTitle),
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

  @override
  Widget build(BuildContext context) {
    //   var height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;

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
                title: Text("Messages"),
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
                title: Text("Dashboard"),
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
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        ),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage("resimler/dorduncu.png"),
                        color: Colors.blue,
                      ),
                      title:
                          Text("Folders", style: TextStyle(color: Colors.blue)),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => folders()));
                      },
                    ),
                  ),
                  Container(  width: 5,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)
                    ),),
                ],

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
        children: [
          SizedBox(
            width: 15,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Items',
                    style: TextStyle(fontSize: 22, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    topLeft: Radius.circular(12))),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: size.height / 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  // mainAxisSize: MainAxisSize.min,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Upload",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(
                                              0xff394C66,
                                            )),
                                      ),
                                    ),
                                    ListTile(
                                      leading:
                                          Image.asset('resimler/Rectangle30.png'),
                                      title: Text(
                                        " Files",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff394C66)),
                                      ),
                                    ),
                                    ListTile(
                                      leading: Image.asset('resimler/Rectangle53.png'),
                                      title: Text(
                                        " Folder",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff394C66)),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Row(
                        children: [
                          // Icon(Icons.upload,),
                          Image.asset('resimler/Union.png'),
                          Text(
                            ' Upload',
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 250,
                      ),
                      Image.asset(
                        'resimler/emptyFolder.png',
                        width: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Wow such a empty space',
                        style: TextStyle(color: Colors.black26, fontSize: 20.0),
                      ),
                    ],
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
