import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yartuyeniproje/dashboard.dart';
import 'details.dart';
import 'folders.dart';
import 'settings.dart';
import 'drawer.dart' as drawer;
import 'navBar.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({Key? key}) : super(key: key);
  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> with TickerProviderStateMixin {
  int? activetabIndex = 0;
  TabController? tabcontroller;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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

  @override
  void initState() {
    super.initState();
    tabcontroller = new TabController(vsync: this, length: 3, initialIndex: 0);
    tabcontroller?.addListener(() {
      setState(() {
        activetabIndex = tabcontroller?.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawerEnableOpenDragGesture: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    if (scaffoldKey.currentState!.isDrawerOpen) {
                      scaffoldKey.currentState!.openEndDrawer();
                    } else {
                      scaffoldKey.currentState!.openDrawer();
                    }
                  }),
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey),
        actions: [
          const SizedBox(
            width: 300,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search)),
                  style: TextStyle(
                    fontSize: 15.0,
                    height: 1.0,
                  ),
                  obscureText: false,
                ),
              ),
            ),
          ),
          Stack(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'AS',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6),
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 7,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            width: 15,
          ),
        ],



      ),


      body: Scaffold(
         key: scaffoldKey,
         drawer: const drawer.Drawer(),
        appBar: TabBar(

          controller: tabcontroller,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.grey,
          indicator: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(7),
          ),
          tabs: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '  TUMU  ',
                      style: TextStyle(
                          color:
                          activetabIndex != 0 ? Colors.grey : Colors.white),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: activetabIndex != 0
                            ? Colors.grey
                            : Colors.transparent)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 30,

                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      ' OKUNMAMIS ',
                      style: TextStyle(
                          color:
                          activetabIndex != 1 ? Colors.grey : Colors.white),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: activetabIndex != 1
                            ? Colors.grey
                            : Colors.transparent)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 30,

                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      ' YILDIZLI ',
                      style: TextStyle(
                          color:
                          activetabIndex != 2 ? Colors.grey : Colors.white),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: activetabIndex != 2
                            ? Colors.grey
                            : Colors.transparent)),
              ),
            ),
          ],

        ),
        body: TabBarView(

          controller: tabcontroller,
          /////////////////////////////////////////////////////////////////////////////
          children: [
            Column(

              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  ////////////AS////////////
                  width: 360,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                            child: Text('AS',
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey[400],
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w900))),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0) //
                                  ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Task Examples',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Dear , yartu team lorem ipsum dolor sor amet ... ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 55,
                          ),
                          Icon(
                            Icons.attachment,
                            color: Colors.blueGrey,
                            size: 18,
                          ),
                          Text(
                            '1 November 2021 ° 14.55',
                            style: TextStyle(fontSize: 6),
                          ),
                          Text(
                            'cihat@yartu.io',
                            style: TextStyle(fontSize: 6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  ////////////os////////////
                  width: 360,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: Text(
                            'ÖŞ',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                color: Colors.grey[400],
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0) //
                                  ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Landing pages design',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Dear , yartu team lorem ipsum dolor sor amet ... ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 55,
                          ),
                          Icon(
                            Icons.attachment,
                            color: Colors.blueGrey,
                            size: 18,
                          ),
                          Text(
                            '1 November 2021 ° 14.55',
                            style: TextStyle(fontSize: 6),
                          ),
                          Text(
                            'cihat@yartu.io',
                            style: TextStyle(fontSize: 6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(

                  ////////////yartu////////////
                  width: 360,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset(
                              'images/1.png',
                            )),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0) //
                                  ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Yartu Ui',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Dear , yartu team lorem ipsum dolor sor amet ... ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 55,
                          ),
                          Icon(
                            Icons.attachment,
                            color: Colors.blueGrey,
                            size: 18,
                          ),
                          Text(
                            '1 November 2021 ° 14.55',
                            style: TextStyle(fontSize: 6),
                          ),
                          Text(
                            'cihat@yartu.io',
                            style: TextStyle(fontSize: 6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  ////////////CH////////////
                  width: 360,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    children: [

                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Center(
                            child: Text('CH',
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey[400],
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w900))),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0) //
                                  ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Fundementals of ai',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Dear , yartu team lorem ipsum dolor sor amet ... ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 55,
                          ),
                          Icon(
                            Icons.attachment,
                            color: Colors.blueGrey,
                            size: 18,
                          ),
                          Text(
                            '1 November 2021 ° 14.55',
                            style: TextStyle(fontSize: 6),
                          ),
                          Text(
                            'cihat@yartu.io',
                            style: TextStyle(fontSize: 6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
               navBar(),
              ],
            ),
            const Center(
              child: Text("There are no notifications"),
            ),
            const Center(
              child: Text("There are no favorits"),
            ),
          ],
        ),

      ),
    );
  }
}
