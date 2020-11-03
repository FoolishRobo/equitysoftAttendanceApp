import 'package:equitysoft/models/attendance_list.dart';
import 'package:equitysoft/models/student_list.dart';
import 'package:equitysoft/service/endponts.dart';
import 'package:equitysoft/service/service.dart';

Future<List<Student>> getAllStudents() async {
  var response = await getHttpsServiceFuture(Students.getStudents);
  if (response == null) {
    //TODO: show error
    return null;
  } else {
    StudentList students = StudentList.fromJson(response);
    return students.rs;
  }
}

Future<AttendanceList> getStudentAttendance(String id) async {
  var response =
      await getHttpsServiceFuture(Students.getStudentDetails + "/$id.json");
//  print("details = $response");
  if (response == null) {
    //TODO: show error
    return null;
  } else {
    AttendanceList students = AttendanceList.fromJson(response);

    int date;
    Attendance dummy;
    List<int> presentDate = [];

    students.rs.forEach((e) {
      date = int.parse(e.d.substring(8, 10));
      presentDate.add(date);
    });
    for (int i = 0; i < 30; i++) {
      if (!presentDate.contains(i + 1)) {
        dummy = Attendance(
          d: "2020-09-${i < 9 ? '0${i + 1}' : i + 1}",
          s: "-",
        );
        students.rs.insert(i, dummy);
      }
    }

    return students;
  }
}
