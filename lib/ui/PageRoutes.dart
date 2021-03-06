import 'package:flutter/material.dart';
import 'package:zpastel/ui/BasePage.dart';
import 'package:zpastel/ui/SelectItemsPage.dart';

import 'CreateUserPage.dart';
import 'LoginPage.dart';
import 'ManualSignInPage.dart';

class PageRoutes {
  static build(BuildContext context) {
    return <String, WidgetBuilder>{
      PageRoutes.Base: (context) => BasePage(),
      PageRoutes.Login: (context) => LoginPage(),
      PageRoutes.ManualSignIn: (context) => ManualSignInPage(),
      PageRoutes.SelectItems: (context) => SelectItemPage(),
      PageRoutes.CreateUser: (context) => CreateUserPage(),
    };
  }

  static const String Base = '/';
  static const String CreateUser = '/CreateUser';
  static const String Login = '/Login';
  static const String SelectItems = '/SelectItems';
  static const String ManualSignIn = '/ManualSignInPage';
}
