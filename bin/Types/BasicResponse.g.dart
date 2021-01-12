// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BasicResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicResponse<T> _$BasicResponseFromJson<T>(Map<String, dynamic> json) {
  return BasicResponse<T>(
    code: json['code'] as int,
    message: json['message'] as String,
    data: _Converter<T>().fromJson(json['data']),
  );
}

Map<String, dynamic> _$BasicResponseToJson<T>(BasicResponse<T> instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': _Converter<T>().toJson(instance.data),
    };
