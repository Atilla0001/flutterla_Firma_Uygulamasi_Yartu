//
//
// import 'package:flutter/material.dart';
// import 'package:yartuyeniproje/dashboard.dart';
// import 'package:yartuyeniproje/details.dart';
// import 'package:yartuyeniproje/folders.dart';
// import 'package:yartuyeniproje/settings.dart';
//
// class tryTabBar extends StatelessWidget {
//   const tryTabBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) => DefaultTabController(
//         length: 5,
//         child: Scaffold(
//           resizeToAvoidBottomInset: false,
//           body: Container(
//             color: Colors.grey[200],
//             child: Row(
//               children: [
//                 TabBar(
//
//                   tabs: [
//                     InkWell(
//                       child: Tab(
//                         child: Image.asset('resimler/mail.png',
//                             color: Colors.blueGrey,width: 30 , height: 30),
//                       ),
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => dashboard()));
//                       },
//                     ),
//                     InkWell(
//                       child: Tab(
//                         child: Image.asset(
//                           'resimler/ikinciIcon.png',
//                           color: Colors.blueGrey,width: 30 , height: 30
//                         ),
//                       ),
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => details()));
//                       },
//                     ),
//                     InkWell(
//                       child: Tab(
//                         child: Image.asset('resimler/ucuncu.png',
//                             color: Colors.blueGrey,width: 30 , height: 30),
//                       ),
//                       onTap: () {},
//                     ),
//                     InkWell(
//                       child: Tab(
//                         child: Image.asset('resimler/dorduncu.png',
//                             color: Colors.blueGrey,width: 30 , height: 30),
//                       ),
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => folders()));
//                       },
//                     ),
//                     InkWell(
//                       child: Tab(
//                         child: Image.asset('resimler/options.png',
//                             color: Colors.blueGrey,width: 30 , height: 30),
//                       ),
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => settings()));
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
// }
//
