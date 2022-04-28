import 'package:json_annotation/json_annotation.dart';
part 'doctors_model.g.dart';

@JsonSerializable(nullable: true)
class Doctors {
  Doctors();
  @JsonKey(name: 'Dname')
  late String dName;

  @JsonKey(name: 'Dept')
  late String dept;

  @JsonKey(name: 'Qualification')
  late String quali;

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DoctorsToJson(this);
}
