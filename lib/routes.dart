import 'package:flutter/widgets.dart';
import 'package:flutter_foodnow_app/splashpage.dart';
import 'package:flutter_foodnow_app/signin/signinpage.dart';
import 'package:flutter_foodnow_app/signup/signuppage.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: ((context) => SplashPage()),
  SignInPage.routeName: ((context) => SignInPage()),
  SignUpPage.routeName: ((context) => SignUpPage()),
};