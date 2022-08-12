import 'package:flutter/material.dart';
import 'package:yartuyeniproje/anaSayfa.dart';
import 'package:yartuyeniproje/navBar.dart';

import 'appbar.dart';
import 'dashboard.dart';
import 'details.dart';
import 'folders.dart';
import 'messages.dart';

void main() => runApp(settings());

class settings extends StatefulWidget {
  static const appTitle = 'Settings';

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
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
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        ),
                    child: ListTile(
                      leading: const ImageIcon(
                        AssetImage("resimler/options.png"),
                        color: Colors.blue,
                      ),
                      title: Text("Settings",
                          style: TextStyle(color: Colors.blue)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => settings()));
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
