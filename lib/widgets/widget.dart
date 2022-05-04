import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

Container facebookLogin() {
  return Container(
    height: 40,
    width: 40,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
    child: SvgPicture.asset("assets/icons/facebook-2.svg"),
  );
}

Container googleLogin() {
  return Container(
    height: 40,
    width: 40,
    margin: EdgeInsets.only(left: 10, right: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
    child: SvgPicture.asset("assets/icons/google-icon.svg"),
  );
}

Container twitterLogin() {
  return Container(
    height: 40,
    width: 40,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
    child: SvgPicture.asset("assets/icons/twitter.svg"),
  );
}

Future<bool?> toastNotify(String msg,
    {ToastGravity toastGravity = ToastGravity.BOTTOM}) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: toastGravity,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
