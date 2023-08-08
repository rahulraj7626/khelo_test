// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      json['name'] as String,
      json['sec'] as String,
      json['amount'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'name': instance.name,
      'sec': instance.sec,
      'amount': instance.amount,
    };
