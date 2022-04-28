import 'package:getx_api_example/model/doctors_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'doctors_list_model.g.dart';

@JsonSerializable(nullable: true)
class DoctorsList {
  DoctorsList();

  @JsonKey(name: 'data')
  late List<Doctors> doctorsList;

  factory DoctorsList.fromJson(Map<String, dynamic> json) =>
      _$DoctorsListFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DoctorsListToJson(this);
}
