import 'package:json_annotation/json_annotation.dart';

import 'Login.dart';
import 'Logout.dart';

part 'BasicResponse.g.dart';

@JsonSerializable(nullable: false)
class BasicResponse<T> {
  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  @_Converter()
  final T data;
  BasicResponse({this.code, this.message, this.data});
  factory BasicResponse.fromJson(Map<String, dynamic> srcJson) =>
      _$BasicResponseFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BasicResponseToJson(this);
}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    // This will only work if `json` is a native JSON type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`
    switch (T.toString()) {
      case 'Login':
        return Login.fromJson(json as Map<String, dynamic>) as T;
      case 'Logout':
        return Logout.fromJson(json) as T;
      default:
        ;
    }
    print('constructor ${T.toString()} not found');
    throw TypeError();
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object;
  }
}
