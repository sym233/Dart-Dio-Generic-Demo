// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login(
    json['cellphone'] as String,
    json['company_name'] as String,
    json['company_roles'] as String,
    json['name'] as String,
    json['permissions'] as String,
    (json['roles'] as List)
        .map((e) => Roles.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['token'] as String,
  );
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'cellphone': instance.cellphone,
      'company_name': instance.companyName,
      'company_roles': instance.companyRoles,
      'name': instance.name,
      'permissions': instance.permissions,
      'roles': instance.roles,
      'token': instance.token,
    };

Roles _$RolesFromJson(Map<String, dynamic> json) {
  return Roles(
    json['code'] as int,
    json['value'] as String,
  );
}

Map<String, dynamic> _$RolesToJson(Roles instance) => <String, dynamic>{
      'code': instance.code,
      'value': instance.value,
    };
