// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserModel _$$_AuthUserModelFromJson(Map<String, dynamic> json) =>
    _$_AuthUserModel(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isOnboardingCompleted: json['isOnboardingCompleted'] as bool,
      userName: json['userName'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_AuthUserModelToJson(_$_AuthUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'isOnboardingCompleted': instance.isOnboardingCompleted,
      'userName': instance.userName,
      'photoUrl': instance.photoUrl,
    };
