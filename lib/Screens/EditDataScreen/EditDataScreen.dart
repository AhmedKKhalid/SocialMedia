import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

import 'ListOfEditing.dart';



class EditDataScreen extends StatelessWidget {
  static const routeName='/EditData';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(elevation: 0,
        iconTheme: IconThemeData(color:Helper.MainTheme),
        backgroundColor: Colors.transparent,
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.only(top: height*0.02,left: width*0.05),
          child: Text('Edit Profile',style: TextStyle(color: Helper.MainTheme,fontSize: 25,fontWeight: FontWeight.bold),)
          ),
            ImageProfile(),
            ListOfEditing(),

        ],
        ),
      ),
    );
  }
}

class ImageProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height:height *0.3,
      width:width,
      margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),
      borderRadius: BorderRadius.circular(25.0)
      ),
    
      child: Stack(

        children: [
          Align(
            alignment: Alignment.center,

            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
              ),
              radius: 80,
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,size: 30,color: Helper.MainTheme,),))
        ],
      ),
    );
  }
}
