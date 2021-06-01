import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

import 'PostData.dart';

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width:width ,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (c,i){
        return Column(
          children: [
            CommentsData(),
            Container(height: 2,width: width*0.5,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Helper.MainTheme
            ),)
          ],
        );
      }),
    );
  }
}

class CommentsData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Row(
        children: [
          Text("Ahmed Khalid",style: TextStyle( color: Helper.MainTheme,fontWeight: FontWeight.bold),),
          Spacer(),
          Text("5 min ago",style: TextStyle( color: Colors.green,fontWeight: FontWeight.bold))
        ],
      ),

      leading:  CircleAvatar(
        backgroundImage: NetworkImage('https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',),
        radius: 35.0,
      ),

      subtitle: Container(
          decoration: BoxDecoration(
            color: Helper.MainTheme,
        borderRadius: BorderRadius.circular(30.0),
          ),
          padding:const EdgeInsets.all(15),
          child: Text("The most thing that i know  is you have to work hard and try hard  dont ever give up, no bain no gain keep working it the best way to acheive your goals",
          style: TextStyle(color: Colors.white),
          ),

      ),

    );


  }
}
