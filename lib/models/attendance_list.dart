import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attendance_list.g.dart';

@JsonSerializable()
class AttendanceList {
  int s;
  String m;
  int p_count;
  int l_count;
  int a_count;
  List<Attendance> rs;

  AttendanceList({
    @required this.s,
    @required this.m,
    @required this.p_count,
    @required this.l_count,
    @required this.a_count,
    @required this.rs,
  });

  factory AttendanceList.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListFromJson(json);

  Map<String, dynamic> toJson() => _$AttendanceListToJson(this);
}

@JsonSerializable()
class Attendance {
  String d;
  String s;

  Attendance({
    @required this.d,
    @required this.s,
  });

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);

  Map<String, dynamic> toJson() => _$AttendanceToJson(this);
}
