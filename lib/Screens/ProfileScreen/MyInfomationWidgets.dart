import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';
import 'package:lets/Screens/EditDataScreen/EditDataScreen.dart';
import 'package:lets/Screens/HomePageScreen/Drawer.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/cupertino.dart';

class MyInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Hero(
                tag: "a1",
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
                  ),
                  radius: 70,
                ),
              ),
              Spacer(),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Helper.MainTheme,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(color: Helper.MainTheme, blurRadius: 10)
                        ]),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EditDataScreen.routeName);
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Ahmed Khalid',
            style: TextStyle(
                color: Color(0xFF191970),
                fontWeight: FontWeight.w700,
                fontSize: 17),
          ),
          Container(
            width: width * 0.2,
            height: 2,
            decoration: BoxDecoration(
              color: Color(0xFF191970),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          Container(
            width: width * 0.1,
            margin: EdgeInsets.only(top: 0.5),
            height: 2,
            decoration: BoxDecoration(
              color: Color(0xFF191970),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: NumOfLikesAndGroups(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ReadMoreText(
              "The most thing that i know  is you have to work hard and try hard  dont ever give up, no bain no gain keep working it the best way to acheive your goals ",
              style: TextStyle(color: Color(0xFF191970)),
              trimLines: 2,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              trimMode: TrimMode.Line,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RichText(
              text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.location_on,
                  color: Colors.red,
                )),
                TextSpan(
                    text: "  Egypt , Cairo",
                    style: TextStyle(
                        color: Helper.MainTheme,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
