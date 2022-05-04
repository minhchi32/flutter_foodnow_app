import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/widget.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  var prefs;
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
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
                  fullnameTextFormField(),
                  SizedBox(
                    height: 30,
                  ),
                  addressTextFormField(),
                  SizedBox(
                    height: 30,
                  ),
                  phoneNumberTextFormField(),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.green)))),
                      child: Text(
                        "Save",
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
                        facebookLogin(),
                        googleLogin(),
                        twitterLogin(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      controller: email,
      enabled: false,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email ",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }

  TextFormField conformTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      enabled: false,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }

  TextFormField fullnameTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your fullname",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.info_outline)),
    );
  }

  TextFormField addressTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }

  TextFormField phoneNumberTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your phone number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.phone)),
    );
  }
}
