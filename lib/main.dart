
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_database/model/student_model.dart';
import 'package:student_database/screens/screen_splash.dart';

Future <void> main(List<String> args)async {
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId)){
     Hive.registerAdapter(StudentModelAdapter());

  }
  

  runApp(const MyApp());
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