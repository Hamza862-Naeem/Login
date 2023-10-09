import 'package:flutter/material.dart';
import 'package:login_form/registration.dart';
import 'package:login_form/routes.dart';

import 'login.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  home:const Registration(),
      home: const Login_Page(),


      routes: {
       // '/':(context) => const Registration(),
      MyRoutes.LoginRoute:(context)=>const Login_Page(),
      MyRoutes.registrationRoute:(context)=>const Registration(),

      },
    );
  }
}