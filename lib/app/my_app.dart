/*
 * abersoft_test
 *     my_app.dart
 *     Created by Cong Fandi on 18/9/2020
 *     email 	    : congfandi@gmail.com
 *     website 	: https://www.thengoding.com
 *     Copyright © 2020 Cong Fandi. All rights reserved.
 */

import 'package:abersoft_test/app/app_theme.dart';
import 'package:abersoft_test/views/auth/auth_view.dart';
import 'package:abersoft_test/views/dashboard/home_view.dart';
import 'package:abersoft_test/views/welcome_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final AppTheme _theme = new AppTheme();
  final routes = {
    "/welcome": (_) => WelcomeView(),
    "/auth": (_) => AuthView(),
    "/home": (_) => HomeView()
  };

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return MaterialApp(
      routes: routes,
      title: 'Abersoft Test',
      theme: ThemeData(
        primarySwatch: _theme.appColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: auth.currentUser == null ? "/welcome" : "/home",
    );
  }
}
