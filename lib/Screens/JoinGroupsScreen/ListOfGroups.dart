import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';
import 'package:lets/Widgets/Dividers.dart';


class ListOfGroups extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return
     ListView.builder(
        itemCount: 15,
          physics: BouncingScrollPhysics(),
        itemExtent:130 ,
          itemBuilder: (c,i){
            return Column(
              children: [
                   ListTilesWidget(),
                   Dividers()
              ],
            );

          }

    );

  }
}



class ListTilesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Container(

            height: 80,width: 80,
            margin: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0)
          ),
        ),
        Column(
          children: [
            Text("Flutter Developers",style: TextStyle(color:Helper.MainTheme,fontWeight: FontWeight.bold),),
            Text("50 Members",style: TextStyle(color:Colors.teal,fontWeight: FontWeight.bold),),
            Text("Created by AhmedKhalid",style: TextStyle(color:Colors.blue.shade900),),

          ],
        )
      ],
    );

  }
}
