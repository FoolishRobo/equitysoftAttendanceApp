// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentList _$StudentListFromJson(Map<String, dynamic> json) {
  return StudentList(
    s: json['s'] as int,
    m: json['m'] as String,
    rs: (json['rs'] as List)
        ?.map((e) =>
            e == null ? null : Student.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$StudentListToJson(StudentList instance) =>
    <String, dynamic>{
      's': instance.s,
      'm': instance.m,
      'rs': instance.rs,
    };

Student _$StudentFromJson(Map<String, dynamic> json) {
  return Student(
    id: json['id'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
