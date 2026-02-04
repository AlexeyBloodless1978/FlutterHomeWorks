// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arguments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionsArguments _$QuestionsArgumentsFromJson(Map<String, dynamic> json) =>
    _QuestionsArguments(category: json['category'] as String);

Map<String, dynamic> _$QuestionsArgumentsToJson(_QuestionsArguments instance) =>
    <String, dynamic>{'category': instance.category};

_ResultArguments _$ResultArgumentsFromJson(Map<String, dynamic> json) =>
    _ResultArguments(
      category: json['category'] as String,
      countCorrectAnswers: const IntConverter().fromJson(
        json['countCorrectAnswers'] as String,
      ),
    );

Map<String, dynamic> _$ResultArgumentsToJson(_ResultArguments instance) =>
    <String, dynamic>{
      'category': instance.category,
      'countCorrectAnswers': const IntConverter().toJson(
        instance.countCorrectAnswers,
      ),
    };
