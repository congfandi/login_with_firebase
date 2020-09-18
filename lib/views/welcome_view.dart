/*
 * abersoft_test
 *     welcome_view.dart
 *     Created by Cong Fandi on 18/9/2020
 *     email 	    : congfandi@gmail.com
 *     website 	: https://www.thengoding.com
 *     Copyright © 2020 Cong Fandi. All rights reserved.
 */

import 'package:abersoft_test/app/app_theme.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final AppTheme _theme = new AppTheme();

  @override
  Widget build(BuildContext context) {
    return _theme.page(
      context: context,
      content: Container(
        margin: EdgeInsets.only(left: 54, right: 54, bottom: 145),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 33,
              child: RaisedButton(
                shape: _theme.buttonTheme(),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/auth',
                      arguments: "register");
                },
                child: Text("Register Account"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 44),
              width: double.infinity,
              height: 33,
              child: RaisedButton(
                shape: _theme.buttonTheme(),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/auth',
                      arguments: "login");
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
