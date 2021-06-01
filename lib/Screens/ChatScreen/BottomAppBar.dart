import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';


class BottomAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
      elevation: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
              padding: const EdgeInsets.all(2.0),
              child:IconButton(icon: Icon(Icons.tab,color: Helper.MainTheme,),onPressed: (){},)
          ),
          Padding(
              padding: const EdgeInsets.all(2.0),
              child:IconButton(icon: Icon(Icons.keyboard_voice,color: Helper.MainTheme,),onPressed: (){},)
          ),

           Expanded(child: Padding(
             padding: const EdgeInsets.only(bottom: 5.0,top: 5.0),
             child: MessageWidget(),
           )),

        Padding(
            padding: const EdgeInsets.only(top:2,bottom: 17,left: 5,right: 5),
           child:  Image.asset('Assets/like.png',height: 25,width: 25,fit: BoxFit.cover,)
          ),
        ],
      ),
    );
  }
}


class MessageWidget extends StatefulWidget {
  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  double containerHeight=40;
  TextEditingController msgController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,

      constraints: BoxConstraints(minHeight: 40,maxHeight:100 ),

      decoration: BoxDecoration(
        color: Helper.MainTheme,
        borderRadius: BorderRadius.circular(30.0),

      ),
      child: TextFormField(
        controller: msgController,
        decoration: InputDecoration(
          hintText: 'Type a message...',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),borderSide: BorderSide(color: Colors.transparent)) ,
          focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),borderSide: BorderSide(color: Colors.transparent)) ,
          contentPadding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),

        ),

        style: TextStyle(color: Colors.white,),
        textInputAction: TextInputAction.newline,
        maxLines: null,

      ),
    );
  }
}
