// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatUserModelImpl _$$ChatUserModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatUserModelImpl(
      createdAt: json['createdAt'] as String,
      userRole: json['userRole'] as String,
      isUserBanned: json['isUserBanned'] as bool,
    );

Map<String, dynamic> _$$ChatUserModelImplToJson(_$ChatUserModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'userRole': instance.userRole,
      'isUserBanned': instance.isUserBanned,
    };
