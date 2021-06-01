import 'package:flutter/material.dart';

class EditBasicInfo extends StatefulWidget {
  String tag;
  EditBasicInfo(this.tag);
  @override
  _EditBasicInfoState createState() => _EditBasicInfoState();
}

class _EditBasicInfoState extends State<EditBasicInfo> {
  GlobalKey _formKey = GlobalKey<FormState>();

  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();

  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _newPasswordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _newPasswordController.dispose();
    _passwordFocusNode.dispose();
    _newPasswordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 100,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            (widget.tag == 'Name')
                ? TextFormField(
              controller: _userNameController,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(_passwordFocusNode);
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                hintText: "USER NAME.....",
                hintStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
                contentPadding: EdgeInsets.only(
                  top: height * 0.03,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'USER NAME IS REQUIRED';
                }
                if (value.length < 3) {
                  return 'USER NAME TOO SHORT';
                }
                if (value.length > 17) {
                  return 'USER NAME TOO LARGE';
                }

                return null;
              },
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            )
                : TextFormField(
              onEditingComplete: () {
                if (widget.tag == 'Password') {
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                }
              },
              textInputAction: TextInputAction.next,
              focusNode: _newPasswordFocusNode,
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "NEW PASSWORD.....",
                hintStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.lock_open, color: Colors.red),
                  onPressed: () {},
                ),
                contentPadding: EdgeInsets.only(
                  top: height * 0.03,
                ),
              ),
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'NEW PASSWORD IS REQUIRED';
                }
                if (value.length < 6) {
                  return 'NEW PASSWORD IS TOO SHORT !';
                }
                if (value.length > 15) {
                  return 'NEW PASSWORD IS TOO LARGE';
                }

                return null;
              },
            ),
            TextFormField(
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              textInputAction: TextInputAction.done,
              focusNode: _passwordFocusNode,
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "PASSWORD.....",
                hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.lock_open, color: Colors.red),
                  onPressed: () {},
                ),
                contentPadding: EdgeInsets.only(
                  top: height * 0.03,
                ),
              ),
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'PASSWORD IS REQUIRED';
                }
                if (value.length < 6) {
                  return 'PASSWORD IS TOO SHORT !';
                }
                if (value.length > 15) {
                  return 'PASSWORD IS TOO LARGE';
                }

                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}

