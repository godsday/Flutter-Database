
import 'package:hive/hive.dart';
part 'student_model.g.dart';

@HiveType(typeId: 1)
class StudentModel{
  @HiveField(0)
   int? id;
  @HiveField(1)
  final String name ;
  @HiveField(2)
  final String age;

  StudentModel({required this.name,required this.age,this.id});

}