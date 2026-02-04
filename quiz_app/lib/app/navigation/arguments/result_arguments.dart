part of 'arguments.dart';

@freezed
abstract class ResultArguments with _$ResultArguments {
  const ResultArguments._();

  const factory ResultArguments({
    required String category,
    @IntConverter() required int countCorrectAnswers,
  }) = _ResultArguments;

  factory ResultArguments.fromJson(Map<String, dynamic> json) =>
      _$ResultArgumentsFromJson(json);
}
