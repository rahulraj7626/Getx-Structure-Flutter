// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors()
  ..dName = json['Dname'] as String
  ..dept = json['Dept'] as String
  ..quali = json['Qualification'] as String;

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
      'Dname': instance.dName,
      'Dept': instance.dept,
      'Qualification': instance.quali,
    };
