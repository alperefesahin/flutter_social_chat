// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatUserModel _$$_ChatUserModelFromJson(Map<String, dynamic> json) =>
    _$_ChatUserModel(
      createdAt: json['createdAt'] as String,
      userRole: json['userRole'] as String,
      isUserBanned: json['isUserBanned'] as bool,
    );

Map<String, dynamic> _$$_ChatUserModelToJson(_$_ChatUserModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'userRole': instance.userRole,
      'isUserBanned': instance.isUserBanned,
    };
