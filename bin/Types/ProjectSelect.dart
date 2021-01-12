import 'package:json_annotation/json_annotation.dart';
part 'ProjectSelect.g.dart';

@JsonSerializable(nullable: false)
class ProjectSelect {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'no')
  String no;
  ProjectSelect(this.name, this.no);

  factory ProjectSelect.fromJson(Map<String, dynamic> jsonSrc) =>
      _$ProjectSelectFromJson(jsonSrc);
  Map<String, dynamic> toJson() => _$ProjectSelectToJson(this);
}
