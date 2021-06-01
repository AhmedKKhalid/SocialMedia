import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lets/Screens/ChatScreen/ChatScreen.dart';
import 'package:lets/Screens/JoinGroupsScreen/GroupsScreen/JoinGroupScreen.dart';
import 'package:lets/Screens/ProfileScreen/ProfileScreen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.8,
      margin: EdgeInsets.only(top: height * 0.1, bottom: height * 0.1),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.9),
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50.0)),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: UserInfo(),
            curve: Curves.easeInOut,
          ),
          ListOfRoutes()
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag:"a1",
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
                ),
                radius: 35.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Ahmed Khalid',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                ),
                Text(
                  'AhmedKhalid246@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: NumOfLikesAndGroups(),
        )
      ],
    );
  }
}

class NumOfLikesAndGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Text("${NumberFormat.compactCurrency(
              decimalDigits: 2,
              symbol:
                  '', // if you want to add currency symbol then pass that in this else leave it empty.
            ).format(3600)}")
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Icon(
              Icons.group,
              color: Color(0xFF191970),
            ),
            Text(
              "360",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Icon(
              Icons.person_add_alt_outlined,
              color: Colors.indigo,
            ),
            Text(
              "360",
            )
          ],
        )
      ],
    );
  }
}

class ListOfRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'My Profile',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(context, ProfileScreen.routeName);
          },
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
            'Posts',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          leading: Icon(
            Icons.screen_share,
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text(
            'My Groups',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          leading: Icon(
            Icons.group,
            color: Colors.black,
          ),
          onTap: (){
            Navigator.pushNamed(context, JoinGroupsScreen.routeName);

          },
        ),
        ListTile(
          title: Text(
            'My Chat',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          leading: Icon(
            Icons.chat,
            color: Colors.black,
          ),
          onTap: (){
            Navigator.pushNamed(context, ChatScreen.routeName);
          },
        ),
        ListTile(
          title: Text(
            'Log Out',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          leading: Icon(
            Icons.logout,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
