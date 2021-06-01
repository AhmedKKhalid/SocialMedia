import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

import 'BottomAppBar.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = '/ChatScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      resizeToAvoidBottomInset: true,
      backgroundColor: Helper.MainTheme,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false, // <-- and this
        titleSpacing: -5,
        title: UserInfo(),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white, // Don't show the leading button
      ),

      bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: BottomAppBarWidget())),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [],
          )),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
          ),
          radius: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Ahmed Khalid',
            style: TextStyle(
                color: Helper.MainTheme,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
        ),
      ],
    );
  }
}
