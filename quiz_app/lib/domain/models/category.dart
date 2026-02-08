part of 'models.dart';
//Строка выше должна быть всегда первой!!!!

@freezed
abstract class Category with _$Category{
  const factory Category ({
    required int id,
    required String name,
})= _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>  _$CategoryFromJson(json);
}