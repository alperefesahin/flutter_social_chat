// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserModelImpl _$$AuthUserModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserModelImpl(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isOnboardingCompleted: json['isOnboardingCompleted'] as bool,
      userName: json['userName'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$AuthUserModelImplToJson(_$AuthUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'isOnboardingCompleted': instance.isOnboardingCompleted,
      'userName': instance.userName,
      'photoUrl': instance.photoUrl,
    };
