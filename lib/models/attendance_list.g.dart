// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceList _$AttendanceListFromJson(Map<String, dynamic> json) {
  return AttendanceList(
    s: json['s'] as int,
    m: json['m'] as String,
    p_count: json['p_count'] as int,
    l_count: json['l_count'] as int,
    a_count: json['a_count'] as int,
    rs: (json['rs'] as List)
        ?.map((e) =>
            e == null ? null : Attendance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AttendanceListToJson(AttendanceList instance) =>
    <String, dynamic>{
      's': instance.s,
      'm': instance.m,
      'p_count': instance.p_count,
      'l_count': instance.l_count,
      'a_count': instance.a_count,
      'rs': instance.rs,
    };

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return Attendance(
    d: json['d'] as String,
    s: json['s'] as String,
  );
}

Map<String, dynamic> _$AttendanceToJson(Attendance instance) =>
    <String, dynamic>{
      'd': instance.d,
      's': instance.s,
    };
