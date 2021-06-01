import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

import 'Clipper.dart';

class BottomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
   return
       Container(
         width: width,
         height: 110,
         color:  Colors.transparent,
         child: Stack(

                children: [
                  Positioned(
                    bottom: 0,
                    child: ClipPath(
                      clipper: NavBarClipper(),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(

                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Helper.MainTheme, Colors.teal.shade900])),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 45,
                      width: MediaQuery.of(context).size.width,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BuildNavItem(
                            icon: Icons.group,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          BuildNavItem(
                            icon: Icons.search,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          BuildNavItem(icon: Icons.bubble_chart)
                        ],
                      )),
                  Positioned(
                      bottom: 10,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextBottomItem('My Groups'),
                          SizedBox(
                            width: 1,
                          ),
                          TextBottomItem('Search'),
                          SizedBox(
                            width: 1,
                          ),
                          TextBottomItem('Groups'),
                        ],
                      ))
                ],


             ),


   );
  }
}

class TextBottomItem extends StatelessWidget {
  String text;
  TextBottomItem(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w500),
    );
  }
}

class BuildNavItem extends StatelessWidget {
  IconData icon;
  BuildNavItem({required this.icon});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Helper.MainTheme,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white.withOpacity(0.9),
        child: Icon(
          icon,
          color: Helper.MainTheme,
        ),
      ),
    );
  }
}
