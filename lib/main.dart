
import 'package:flutter/material.dart';

import 'package:student_database/sreens/screen_splash.dart';
main(List<String> args) {
 

  
  

  runApp( const MyApp());
}
class  MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
        home:const ScreenSplash() ,
      title: 'Student App',
    );
  }
}