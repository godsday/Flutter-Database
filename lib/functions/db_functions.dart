import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_database/model/student_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

addToList(StudentModel value) async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  final _id=await studentDB.add(value);
  value.id=_id;
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}

getallstudent() async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
 studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}

deleteStudent(int id)async{
    final studentDB = await Hive.openBox<StudentModel>('student_db');
    await studentDB.delete(id);
    getallstudent();
}

//updateStudent(int id,StudentModel value)async{
 //   final studentDB = await Hive.openBox<StudentModel>('student_db');
   // await studentDB.put(id,value);
    




//}