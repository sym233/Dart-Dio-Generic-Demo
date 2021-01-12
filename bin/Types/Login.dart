import 'package:json_annotation/json_annotation.dart';

part 'Login.g.dart';

@JsonSerializable(nullable: false)
class Login {
  @JsonKey(name: 'cellphone')
  String cellphone;

  @JsonKey(name: 'company_name')
  String companyName;

  @JsonKey(name: 'company_roles')
  String companyRoles;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'permissions')
  String permissions;

  @JsonKey(name: 'roles')
  List<Roles> roles;

  @JsonKey(name: 'token')
  String token;

  Login(
    this.cellphone,
    this.companyName,
    this.companyRoles,
    this.name,
    this.permissions,
    this.roles,
    this.token,
  );

  factory Login.fromJson(Map<String, dynamic> srcJson) =>
      _$LoginFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable()
class Roles {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'value')
  String value;

  Roles(
    this.code,
    this.value,
  );

  factory Roles.fromJson(Map<String, dynamic> srcJson) =>
      _$RolesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RolesToJson(this);
}
