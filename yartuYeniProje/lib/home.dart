// /*
// import 'package:flutter/material.dart';
// class Homes extends StatefulWidget {
//   const Homes({Key? key}) : super(key: key);
//
//   @override
//   State<Homes> createState() => _HomesState();
// }
//
// class _HomesState extends State<Homes> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           ////////////AS////////////
//           width: 360,
//           height: 90,
//           decoration: BoxDecoration(
//             color: Colors.grey[300],
//             borderRadius: BorderRadius.all(Radius.circular(
//                 15.0) //                 <--- border radius here
//             ),
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 60,
//                 height: 60,
//                 child: Center(
//                     child: Text('AS',
//                         style: TextStyle(
//                             fontStyle: FontStyle.normal,
//                             color: Colors.grey[400],
//                             fontSize: 25.0,
//                             fontWeight: FontWeight.w900))),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius:
//                   BorderRadius.all(Radius.circular(10.0) //
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Task Examples',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Dear , yartu team lorem ipsum dolor sor amet ... ',
//                     textAlign: TextAlign.end,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 8.0,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 55,
//                   ),
//                   Icon(
//                     Icons.attachment,
//                     color: Colors.blueGrey,
//                     size: 18,
//                   ),
//                   Text(
//                     '1 November 2021 ° 14.55',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                   Text(
//                     'cihat@yartu.io',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           ////////////os////////////
//           width: 360,
//           height: 90,
//           decoration: BoxDecoration(
//             color: Colors.grey[300],
//             borderRadius: BorderRadius.all(Radius.circular(
//                 15.0) //                 <--- border radius here
//             ),
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 60,
//                 height: 60,
//                 child: Center(
//                     child: Text('ÖŞ',
//                         style: TextStyle(
//                             fontStyle: FontStyle.normal,
//                             color: Colors.grey[400],
//                             fontSize: 25.0,
//                             fontWeight: FontWeight.w900))),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius:
//                   BorderRadius.all(Radius.circular(10.0) //
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Landing pages design',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Dear , yartu team lorem ipsum dolor sor amet ... ',
//                     textAlign: TextAlign.end,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 8.0,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 55,
//                   ),
//                   Icon(
//                     Icons.attachment,
//                     color: Colors.blueGrey,
//                     size: 18,
//                   ),
//                   Text(
//                     '1 November 2021 ° 14.55',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                   Text(
//                     'cihat@yartu.io',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           ////////////yartu////////////
//           width: 360,
//           height: 90,
//           decoration: BoxDecoration(
//             color: Colors.grey[300],
//             borderRadius: BorderRadius.all(Radius.circular(
//                 15.0) //                 <--- border radius here
//             ),
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 60,
//                 height: 60,
//                 child: FittedBox(
//                     fit: BoxFit.fill,
//                     child: Image.asset(
//                       'images/1.png',
//                     )),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius:
//                   BorderRadius.all(Radius.circular(10.0) //
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Yartu Ui',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Dear , yartu team lorem ipsum dolor sor amet ... ',
//                     textAlign: TextAlign.end,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 8.0,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 55,
//                   ),
//                   Icon(
//                     Icons.attachment,
//                     color: Colors.blueGrey,
//                     size: 18,
//                   ),
//                   Text(
//                     '1 November 2021 ° 14.55',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                   Text(
//                     'cihat@yartu.io',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           ////////////CH////////////
//           width: 360,
//           height: 90,
//           decoration: BoxDecoration(
//             color: Colors.grey[300],
//             borderRadius: BorderRadius.all(Radius.circular(
//                 15.0) //                 <--- border radius here
//             ),
//           ),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 60,
//                 height: 60,
//                 child: Center(
//                     child: Text('CH',
//                         style: TextStyle(
//                             fontStyle: FontStyle.normal,
//                             color: Colors.grey[400],
//                             fontSize: 25.0,
//                             fontWeight: FontWeight.w900))),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius:
//                   BorderRadius.all(Radius.circular(10.0) //
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Fundementals of ai',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Dear , yartu team lorem ipsum dolor sor amet ... ',
//                     textAlign: TextAlign.end,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 8.0,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 55,
//                   ),
//                   Icon(
//                     Icons.attachment,
//                     color: Colors.blueGrey,
//                     size: 18,
//                   ),
//                   Text(
//                     '1 November 2021 ° 14.55',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                   Text(
//                     'cihat@yartu.io',
//                     style: TextStyle(fontSize: 6),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Spacer(),
//         Container(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 50.0,
//               right: 50,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: const [
//                 Icon(
//                   Icons.mail,
//                   color: Colors.blueGrey,
//                 ),
//                 Icon(
//                   Icons.list_alt,
//                   color: Colors.blueGrey,
//                 ),
//                 Icon(
//                   Icons.summarize,
//                   color: Colors.blueGrey,
//                 ),
//                 Icon(
//                   Icons.folder,
//                   color: Colors.blueGrey,
//                 ),
//                 Icon(
//                   Icons.tune,
//                   color: Colors.blueGrey,
//                 ),
//               ],
//             ),
//           ),
//           width: 400,
//           height: 50,
//           color: Colors.grey[300],
//         ),
//       ],
//     );
//   }
// }
// */
