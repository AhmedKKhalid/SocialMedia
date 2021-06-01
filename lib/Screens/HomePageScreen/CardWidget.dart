import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'BottomBar.dart';
class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
      shape:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: Colors.transparent)) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: UserInfo(),
          ),
          PostWidget(),
          ImageWidget(),
          BottomBar()
        ],
      ),
    );
  }
}




class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      CircleAvatar(
        backgroundImage: NetworkImage('https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',),
        radius: 35.0,
      ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Ahmed Khalid', style: TextStyle(color: Color(0xFF191970),fontWeight: FontWeight.w700,fontSize: 18),),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.delete_sweep,color: Colors.red,),
          ),
        )
      ],
    );
  }
}


class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ReadMoreText("The most thing that i know  is you have to work hard and try hard  dont ever give up, no bain no gain keep working it the best way to acheive your goals ",
        style: TextStyle(color: Color(0xFF191970) ),
        trimLines: 2,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        trimMode: TrimMode.Line,

      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Image.network('https://freerangestock.com/sample/131494/dark-view-of-old-woman-with-hands-on-face-.jpg',
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height*0.35 ,
      ),

    );
  }
}