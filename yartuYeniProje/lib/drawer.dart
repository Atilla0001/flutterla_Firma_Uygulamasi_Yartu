import 'package:flutter/material.dart';
import 'package:yartuyeniproje/dashboard.dart';
import 'package:yartuyeniproje/details.dart';
import 'package:yartuyeniproje/folders.dart';
import 'package:yartuyeniproje/messages.dart';
import 'package:yartuyeniproje/settings.dart';

class Drawer extends StatelessWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return

   ///////////////////DRAWER/////////////////

       Container(
         width: width/2,
         color: Colors.white,

         child: Column(
          children: [
           Stack(
             children:
            [ Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],

              ),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage("resimler/mail.png"),
                  color: Colors.blue,
                ),
                title: Text("Dashboard",style: TextStyle(color: Colors.blue)),
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
       )
   ;
  }
}
