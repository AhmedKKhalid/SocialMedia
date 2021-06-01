import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

import 'EditingDIalog.dart';

class ListOfEditing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ListOfAttributes(
          attribute: 'Name',
          value: 'Ahmed Khalid',
          icon: Icons.person,
        ),
        Container(
          width: width * 0.5,
          height: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        ListOfAttributes(
          attribute: 'Email',
          value: '0hmedKhalid@gmail.com',
          icon: Icons.email_rounded,
        ),
        Container(
          width: width * 0.5,
          height: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        ListOfAttributes(
          attribute: 'Password',
          value: '*********',
          icon: Icons.lock_open
        ),
        Container(
          width: width * 0.5,
          height: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        ListOfAttributes(
          attribute: 'Bio',
          value: 'My name is Ahmed Khalid and iam a SoftWare Engineer',
          icon: Icons.edit
        ),
        Container(
          width: width * 0.5,
          height: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        ListOfAttributes(
          attribute: 'Location',
          value: 'Egypt,Cairo',
          icon: Icons.location_on
        ),
      ],
    );
  }
}

class ListOfAttributes extends StatelessWidget {
  String attribute, value;
  IconData icon;
  ListOfAttributes({required this.attribute, required this.value,required this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        attribute,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        (value.length > 30) ? "${value.substring(0, 30)}..." : value,
        style: TextStyle(
          color: Helper.MainTheme,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 1,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Helper.MainTheme,
      ),
      onTap: (){
       showDialog(context: context, builder: (c)=> DialogEditing(tag: attribute,icon: icon,));
      },
    );
  }
}
