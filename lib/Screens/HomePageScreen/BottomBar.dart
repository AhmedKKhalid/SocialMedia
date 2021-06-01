import 'package:flutter/material.dart';
import 'package:lets/Screens/FullPostInfoScreen/FullPostInfoScreen.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
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

            IconButton(
                icon: Icon(
                  Icons.comment,
                  color: Color(0xFF191970),
                ),
                onPressed: () {
                    Navigator.pushNamed(context, FullPostInfoScreen.routeName);
                },
                padding: EdgeInsets.only(left: 20, right: 20)),
          ],
        ));
  }
}
