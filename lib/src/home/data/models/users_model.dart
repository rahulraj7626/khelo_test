import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UserData {
  final String name;
  final String sec;
  final String amount;

  UserData(this.name, this.sec, this.amount);
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
