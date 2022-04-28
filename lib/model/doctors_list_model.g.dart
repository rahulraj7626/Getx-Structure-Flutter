// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsList _$DoctorsListFromJson(Map<String, dynamic> json) => DoctorsList()
  ..doctorsList = (json['data'] as List<dynamic>)
      .map((e) => Doctors.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$DoctorsListToJson(DoctorsList instance) =>
    <String, dynamic>{
      'data': instance.doctorsList,
    };
