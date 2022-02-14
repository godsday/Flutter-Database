

import 'package:flutter/material.dart';
import 'package:student_database/functions/db_functions.dart';
import 'package:student_database/screens/screen_add_student.dart';
import 'package:student_database/screens/screen_student_list.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('Home'),
      ),

    body: Column(
      
      children: [
        Expanded(
          child: Container(
            child: TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddStudent()));
            },
             child: const Text('Add Student',
             style: TextStyle(
               color: Colors.white,
               textBaseline: TextBaseline.alphabetic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              ),
             )),
            color: Colors.black,
            width: double.infinity,
            
          
          ),
        ),
        Expanded(
          child: Container(
            child: TextButton(onPressed: (){
              getallstudent();
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const StudentList()));

            }, 
            child:const Text('Show Student List',
            style: TextStyle(
              color: Colors.white,
              
              fontSize: 25,
              fontWeight: FontWeight.bold,


            ),)),
            color: Colors.black,
            width: double.infinity,
            
          ),
        )
      ],
    ),
    
    
    
      
    );
  }
}