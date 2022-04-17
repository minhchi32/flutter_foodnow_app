import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            fullnameTextFormField(),
            SizedBox(
              height: 30,
            ),
            emailTextFormField(),
            SizedBox(
              height: 30,
            ),
            passwordTextFormField(),
            SizedBox(
              height: 30,
            ),
            conformTextFormField(),
            SizedBox(
              height: 30,
            ),
            addressTextFormField(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, email.text);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.green,
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/google-icon.svg"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/twitter.svg"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      controller: email,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email ",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }

  TextFormField conformTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }

  TextFormField fullnameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your fullname",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.info_outline)),
    );
  }

  TextFormField addressTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }
}
