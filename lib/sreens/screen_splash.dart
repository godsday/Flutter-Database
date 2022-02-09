

import 'package:flutter/material.dart';
import 'package:student_database/sreens/screen_home.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    
  _gotohome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Text("STUDENT APP",
          style:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color:Colors.white,
          ),
          
          ),
        ),
      )

      );
    
  }

  Future<void> _gotohome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) =>const ScreenHome()));
  }
}

