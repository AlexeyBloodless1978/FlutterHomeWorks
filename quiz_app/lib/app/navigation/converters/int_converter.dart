import 'package:freezed_annotation/freezed_annotation.dart';

class IntConverter extends JsonConverter<int,String>{
  const IntConverter();
  @override
  int fromJson(String json ) {
    return int.tryParse(json) ??  0;
  }
  @override
  String toJson (int object ) {
    return object.toString();
  }
}