import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/body.dart';

class SignInPage extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
