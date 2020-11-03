import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student_list.g.dart';

@JsonSerializable()
class StudentList {
  int s;
  String m;
  List<Student> rs;

  StudentList({
    @required this.s,
    @required this.m,
    @required this.rs,
  });

  factory StudentList.fromJson(Map<String, dynamic> json) =>
      _$StudentListFromJson(json);

  Map<String, dynamic> toJson() => _$StudentListToJson(this);
}

@JsonSerializable()
class Student {
  String id;
  String name;

  Student({
    @required this.id,
    @required this.name,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);

  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
