import 'package:flutter/material.dart';
import 'screen/change_password_screen.dart';
import 'screen/get_start_screen.dart';

import 'screen/home_page_screen.dart';
import 'screen/login_screen.dart';
import 'screen/splash_screen.dart';
import 'screen/verrification_code_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
