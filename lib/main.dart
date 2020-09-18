/*
 * abersoft_test
 *     main.dart
 *     Created by Cong Fandi on 18/9/2020
 *     email 	    : congfandi@gmail.com
 *     website 	: https://www.thengoding.com
 *     Copyright © 2020 Cong Fandi. All rights reserved.
 */

import 'package:abersoft_test/app/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
