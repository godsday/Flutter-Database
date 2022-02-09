import 'package:flutter/cupertino.dart';

import 'package:student_database/model/student_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

addToList(StudentModel value) async {

  
  
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}

getallstudent() async {
  
 studentListNotifier.value.clear();
  
  studentListNotifier.notifyListeners();
}

deleteStudent(int id)async{
    
    
    getallstudent();
}

//updateStudent(int id,StudentModel value)async{
 //   
   // 
    




//}