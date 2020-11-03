import 'package:equitysoft/data/students.dart';
import 'package:equitysoft/models/attendance_list.dart';
import 'package:equitysoft/models/student_list.dart';
import 'package:flutter/material.dart';

class HomePageVm extends ChangeNotifier {
  bool isLoading = false;
  List<Student> studentList;
  List<AttendanceList> data = [];


  Future<void> fetchStudents() async {
    if (!isLoading) {
      isLoading = true;
      studentList = await getAllStudents();
      isLoading = false;
      notifyListeners();
      for (int i = 0; i < studentList.length; i++) {
        data.add(await getStudentAttendance((studentList[i].id)));
      notifyListeners();
      }
    }
  }
}