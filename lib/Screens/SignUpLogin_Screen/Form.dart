import 'package:flutter/material.dart';
class FormWidget extends StatefulWidget {

  bool isSignUpState;
  FormWidget(this.isSignUpState);
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  late FocusNode _emailFocusNode ;
  late FocusNode _passwordFocusNode ;
  late FocusNode _verPasswordFocusNode ;
  final _userC = TextEditingController();
  final _emailC = TextEditingController();
  final _pwC = TextEditingController();

  bool _visibilityPw=true;
  bool _visibilityVerPw=true;
  final globalKey=GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _verPasswordFocusNode = FocusNode();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _verPasswordFocusNode.dispose();
    _userC.dispose();
    _emailC.dispose();
    _pwC.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;

    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          (widget.isSignUpState)
              ? TextFormField(

            controller: _userC,
            onEditingComplete: () {
              FocusScope.of(context)
                  .requestFocus(_emailFocusNode);
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blue)),
              hintText: "USER NAME.....",
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              suffixIcon: Icon(
                Icons.person,
                color: Colors.purple,
              ),
              contentPadding: EdgeInsets.only(top: height*0.03,),
            ),
            validator: ( value) {
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
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )
              : Container(),

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
              if (widget.isSignUpState) {
                FocusScope.of(context)
                    .requestFocus(_verPasswordFocusNode);
              } else {
                FocusScope.of(context).requestFocus(FocusNode());
              }
            },
            textInputAction: (widget.isSignUpState)
                ? TextInputAction.next
                : TextInputAction.done,
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

          (widget.isSignUpState)
              ? TextFormField(
            textInputAction: TextInputAction.done,

            focusNode: _verPasswordFocusNode,
            decoration: InputDecoration(
              hintText: "VERIFY PASSWORD.....",
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              border: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.blue)),
              suffixIcon: IconButton(
                icon: Icon(
                    (!_visibilityVerPw)
                        ? Icons.visibility
                        :
                    Icons.visibility_off,
                    color: Colors.red),
                onPressed: () {
                  setState(() {
                    _visibilityVerPw = !_visibilityVerPw;
                  });
                },
              ),
              contentPadding: EdgeInsets.only(top: height*0.03,),
            ),
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            obscureText: _visibilityVerPw,
            validator: (value) {
              if (value != _pwC.text) {
                return 'PASSWORD NOT MATCH';
              }
              return null;
            },
            onSaved: (value) {},
          )
              : Container(),

        ],
      ),
    );
  }
}