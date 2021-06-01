import 'package:flutter/material.dart';

class EditEmail extends StatefulWidget {
  @override
  _EditEmailState createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {

  TextEditingController _emailC = TextEditingController();
  TextEditingController _pwC = TextEditingController();
  GlobalKey _globalKey=GlobalKey<FormState>();

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  bool _visibilityPw=true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailC.dispose();
    _pwC.dispose();
    _passwordFocusNode.dispose();

  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
        height: 100,
        child: Form(
            key: _globalKey,
            child: Column(
                children: [
                  TextFormField(

                    controller: _emailC,
                    onEditingComplete: () {
                      FocusScope.of(context)
                          .requestFocus(_passwordFocusNode);
                    },
                    focusNode: _emailFocusNode,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "EMAIL.....",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.purple,
                      ),
                      contentPadding: EdgeInsets.only(top: height*0.03,),
                    ),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'EMAIL IS REQUIRED';
                      }

                      if (!value.contains('@')) {
                        return 'EMAIL IS WRONG !';
                      }
                      if (!value.trim().endsWith('.com') &&
                          !value.trim().endsWith('.COM')) {
                        return 'EMAIL IS WRONG !';
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
                    controller: _pwC,
                    obscureText: _visibilityPw,
                    decoration: InputDecoration(
                      hintText: "PASSWORD.....",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      suffixIcon: IconButton(
                        icon: Icon(
                            (!_visibilityPw)
                                ? Icons.visibility
                                :
                            Icons.visibility_off,
                            color: Colors.red),
                        onPressed: () {
                          setState(() {
                            _visibilityPw = !_visibilityPw;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.only(top: height*0.03,),
                    ),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
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
                ])
        )
    );
  }
}
