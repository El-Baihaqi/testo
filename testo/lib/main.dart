import 'package:flutter/material.dart';
import 'package:testo/pages/create_account_pages.dart';
import 'package:testo/pages/have_account.dart';
import 'package:testo/pages/homepage_app.dart';
import 'package:testo/pages/homepage_login.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginpage(),
      routes: {
        '/loginhome': (context) => loginpage(),
        '/accountpage': (context) => CreateAccount(),
        '/haveaccountpage': (context) => HaveAccount(),
        '/homepageapp': (context) => HomepageApp(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
