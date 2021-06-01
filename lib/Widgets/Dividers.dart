import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';


class Dividers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 2,
            width: width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Helper.MainTheme),
          ),
          Container(
            height: 2,
            width: width * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Helper.MainTheme),
          ),
          Container(
            height: 2,
            width: width * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Helper.MainTheme),
          ),
          Container(
            height: 2,
            width: width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Helper.MainTheme),
          ),
          Container(
            height: 2,
            width: width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Helper.MainTheme),
          ),
          Container(
            height: 2,
            width: width * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Helper.MainTheme),
          ),
        ],
      ),
    );
  }
}