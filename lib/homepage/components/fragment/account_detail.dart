import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../widgets/widget.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  var prefs;
  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final address = TextEditingController();
  final phone = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    prefs = await SharedPreferences.getInstance();
    email.text = prefs.getString('username');
    password.text = prefs.getString('password');
    fullname.text = prefs.getString('fullname');
    address.text = prefs.getString('address');
    phone.text = prefs.getString('phone');
  }

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
                  formField(email, "Enter your email", Icons.email_outlined,
                      enable: false),
                  SizedBox(
                    height: 30,
                  ),
                  formField(password, "Enter your password", Icons.lock_outline,
                      enable: false, obscureText: true),
                  SizedBox(
                    height: 30,
                  ),
                  formField(
                      fullname, "Enter your fullname", Icons.info_outline),
                  SizedBox(
                    height: 30,
                  ),
                  formField(address, "Enter your address", Icons.lock_outline),
                  SizedBox(
                    height: 30,
                  ),
                  formField(phone, "Enter your phone number", Icons.phone, keyboardType: TextInputType.number),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {
                        prefs = await SharedPreferences.getInstance();
                        prefs.setString('fullname', fullname.text);
                        prefs.setString('address', address.text);
                        prefs.setString('phone', phone.text);
                        toastNotify("Update info account successfully");
                        // final result = await Navigator.pushNamed(context, HomePage.routeName);
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                      child: const Text(
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
}
