import 'package:json_annotation/json_annotation.dart';

part 'Logout.g.dart';

@JsonSerializable()
class Logout {
  Logout();

  factory Logout.fromJson(Map<String, dynamic> srcJson) =>
      _$LogoutFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LogoutToJson(this);
}
