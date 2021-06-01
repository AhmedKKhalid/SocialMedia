import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';
import 'package:lets/Widgets/Dividers.dart';
import 'package:readmore/readmore.dart';

import 'Comments.dart';

class PostData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: UserInfoFullPost(),
          ),
          FullPostWidget(),
          Center(child: ImageWidget()),
          BottomBarFullPost(),
          Center(
            child: Dividers(),
          ),
          Comments()
        ]
        ));
  }
}

class UserInfoFullPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
          ),
          radius: 35.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Ahmed Khalid',
            style: TextStyle(
                color: Color(0xFF191970),
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_sweep,
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}

class FullPostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        "The most thing that i know  is you have to work hard and try hard  dont ever give up, no bain no gain keep working it the best way to acheive your goals ",
        style: TextStyle(color: Color(0xFF191970)),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Image.network(
        'https://freerangestock.com/sample/131494/dark-view-of-old-woman-with-hands-on-face-.jpg',
        fit: BoxFit.cover,
        width: width * 0.9,
        height: MediaQuery.of(context).size.height * 0.4,
      ),
    );
  }
}

class BottomBarFullPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF191970), width: 3),
            borderRadius: BorderRadius.circular(50.0)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '300',
                style: TextStyle(
                    color: Color(0xFF191970), fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {},
              padding: EdgeInsets.only(left: 5, right: 20),
            ),
          ],
        ));
  }
}


