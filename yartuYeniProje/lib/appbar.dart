
import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

       AppBar(

        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey),

        actions: [
          SizedBox(
            width: 300,
            child: Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
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
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('AS', style: TextStyle(fontSize: 19,color: Colors.white),),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: CircleAvatar(
                      backgroundColor: Colors.white, radius: 7,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: CircleAvatar(
                      backgroundColor: Colors.green, radius: 5,
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );

  }
}
