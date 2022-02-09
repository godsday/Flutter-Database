import 'package:flutter/material.dart';
import 'package:student_database/functions/db_functions.dart';
import 'package:student_database/model/student_model.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Student List'),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: studentListNotifier,
              builder: (BuildContext context, List<StudentModel> studentList,
                  Widget? child) {
                return ListView.separated(
                  
                  itemBuilder: (context, index) {
                    final  data= studentList[index];
                    return ListTile(
                      onTap: () {
                         
                                    
                                        },
                      title: Text(data.name),
                      subtitle: Text(data.age),
                      trailing: IconButton(
                        onPressed: (){
                          if(data.id!=null){
                          deleteStudent(data.id!);

                          }else{
                            print('No item found');
                          }
                        }, 
                      icon:const  Icon(Icons.delete),
                      color: Colors.red,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, index) =>
                      const Divider(),
                  itemCount: studentList.length,
                );
              }),
        ));
  }
}
