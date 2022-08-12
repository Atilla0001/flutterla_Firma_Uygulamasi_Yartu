

import 'package:flutter/material.dart';
import 'package:yartuyeniproje/anaSayfa.dart';
import 'package:yartuyeniproje/dashboard.dart';
import 'package:yartuyeniproje/details.dart';
import 'package:yartuyeniproje/folders.dart';
import 'package:yartuyeniproje/models/bottombarr.dart';
import 'package:yartuyeniproje/settings.dart';



class navBar extends StatefulWidget {
  @override
  State<navBar> createState() => _navBarState();
}
int isActive=0;

class _navBarState extends State<navBar> {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 500,
      color: Colors.grey[200],
      child: Center(
        child: Container(
          color: Colors.grey[200],
          height: 50,

          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: test.items.length,
                  itemBuilder: (context, int index) {
                    return InkWell(
                      onTap: (){
                        setState(() {
                          isActive = index;
                        });
                        if(index ==0){

                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => anaSayfa()));
                        }
                        else if (index ==1){

                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => dashboard()));
                        }
                        else if (index ==2){

                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => details()));
                        }
                        else if (index ==3){

                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => folders()));
                        }
                        else {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => settings()));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: isActive == index ? Border.all(width: 2,color:Colors.blue) : Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(8),
                            color: isActive == index ? Colors.white: Colors.transparent,

                          ),
                          child: Center(
                            child: Image.asset(test.items[index].image,
                                color: isActive == index ? Colors.blue: Colors.blueGrey),
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          )),
      ),
    );
  }
}
