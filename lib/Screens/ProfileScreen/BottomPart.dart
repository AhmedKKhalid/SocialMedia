import 'package:flutter/material.dart';

class JoinedGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Text(
            'Joined in',
            style: TextStyle(
                color: Color(0xFF191970), fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: width,
          height: height * 0.1,
          child: ListView.builder(
            itemExtent: height * 0.11,
              itemCount: 8,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, i) {
                return CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
                  ),
                  radius: 40.0,
                );
              }),
        )
      ],
    );
  }
}
