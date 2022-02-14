

import 'package:flutter/material.dart';
import 'package:student_database/functions/db_functions.dart';
import 'package:student_database/model/student_model.dart';
import 'package:student_database/screens/screen_student_list.dart';

class AddStudent extends StatelessWidget {
   AddStudent({ Key? key }) : super(key: key);
   
   final _namecontroller =TextEditingController();
      final _agecontroller =TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               TextField(
                controller: _namecontroller,
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Full Name'
                ),
              ),
             const Divider(),
               TextField(
                 keyboardType: TextInputType.number,
                  controller: _agecontroller,
                  decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Age'
              ),
              ),
              ElevatedButton(onPressed: (){
                checkdata();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const StudentList()));
              }, 
              child:const Text('Add Student'))
            ],
          ),
        ),
      ),
    );
  }

  checkdata(){
    final _name=_namecontroller.text;
    final _age =_agecontroller.text;
    if(_name.isEmpty||_age.isEmpty){
      return;
    }else {
      print('$_name $_age');

      final _student =StudentModel(name: _name, age: _age);

      addToList(_student);
    }
  }

}