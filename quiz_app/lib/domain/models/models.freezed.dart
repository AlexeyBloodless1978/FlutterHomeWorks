// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

 int get id; String get name;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Category(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({required this.id, required this.name});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Category(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Question {

 int? get id; String? get question; String? get description; Answer? get answers;@JsonKey(name: 'multiple_correct_answer') String? get multipleCorrectAnswer;@JsonKey(name: 'correct_answers') CorrectAnswer? get correctAnswer; String? get explanation; String? get category; String? get difficulty;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswer, multipleCorrectAnswer) || other.multipleCorrectAnswer == multipleCorrectAnswer)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswer,correctAnswer,explanation,category,difficulty);

@override
String toString() {
  return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswer: $multipleCorrectAnswer, correctAnswer: $correctAnswer, explanation: $explanation, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 int? id, String? question, String? description, Answer? answers,@JsonKey(name: 'multiple_correct_answer') String? multipleCorrectAnswer,@JsonKey(name: 'correct_answers') CorrectAnswer? correctAnswer, String? explanation, String? category, String? difficulty
});


$AnswerCopyWith<$Res>? get answers;$CorrectAnswerCopyWith<$Res>? get correctAnswer;

}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? question = freezed,Object? description = freezed,Object? answers = freezed,Object? multipleCorrectAnswer = freezed,Object? correctAnswer = freezed,Object? explanation = freezed,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answer?,multipleCorrectAnswer: freezed == multipleCorrectAnswer ? _self.multipleCorrectAnswer : multipleCorrectAnswer // ignore: cast_nullable_to_non_nullable
as String?,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as CorrectAnswer?,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswerCopyWith<$Res>? get answers {
    if (_self.answers == null) {
    return null;
  }

  return $AnswerCopyWith<$Res>(_self.answers!, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswerCopyWith<$Res>? get correctAnswer {
    if (_self.correctAnswer == null) {
    return null;
  }

  return $CorrectAnswerCopyWith<$Res>(_self.correctAnswer!, (value) {
    return _then(_self.copyWith(correctAnswer: value));
  });
}
}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? question,  String? description,  Answer? answers, @JsonKey(name: 'multiple_correct_answer')  String? multipleCorrectAnswer, @JsonKey(name: 'correct_answers')  CorrectAnswer? correctAnswer,  String? explanation,  String? category,  String? difficulty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswer,_that.correctAnswer,_that.explanation,_that.category,_that.difficulty);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? question,  String? description,  Answer? answers, @JsonKey(name: 'multiple_correct_answer')  String? multipleCorrectAnswer, @JsonKey(name: 'correct_answers')  CorrectAnswer? correctAnswer,  String? explanation,  String? category,  String? difficulty)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswer,_that.correctAnswer,_that.explanation,_that.category,_that.difficulty);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? question,  String? description,  Answer? answers, @JsonKey(name: 'multiple_correct_answer')  String? multipleCorrectAnswer, @JsonKey(name: 'correct_answers')  CorrectAnswer? correctAnswer,  String? explanation,  String? category,  String? difficulty)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.question,_that.description,_that.answers,_that.multipleCorrectAnswer,_that.correctAnswer,_that.explanation,_that.category,_that.difficulty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Question extends Question {
  const _Question({required this.id, required this.question, required this.description, required this.answers, @JsonKey(name: 'multiple_correct_answer') required this.multipleCorrectAnswer, @JsonKey(name: 'correct_answers') required this.correctAnswer, required this.explanation, required this.category, required this.difficulty}): super._();
  factory _Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

@override final  int? id;
@override final  String? question;
@override final  String? description;
@override final  Answer? answers;
@override@JsonKey(name: 'multiple_correct_answer') final  String? multipleCorrectAnswer;
@override@JsonKey(name: 'correct_answers') final  CorrectAnswer? correctAnswer;
@override final  String? explanation;
@override final  String? category;
@override final  String? difficulty;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswer, multipleCorrectAnswer) || other.multipleCorrectAnswer == multipleCorrectAnswer)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswer,correctAnswer,explanation,category,difficulty);

@override
String toString() {
  return 'Question(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswer: $multipleCorrectAnswer, correctAnswer: $correctAnswer, explanation: $explanation, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? question, String? description, Answer? answers,@JsonKey(name: 'multiple_correct_answer') String? multipleCorrectAnswer,@JsonKey(name: 'correct_answers') CorrectAnswer? correctAnswer, String? explanation, String? category, String? difficulty
});


@override $AnswerCopyWith<$Res>? get answers;@override $CorrectAnswerCopyWith<$Res>? get correctAnswer;

}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? question = freezed,Object? description = freezed,Object? answers = freezed,Object? multipleCorrectAnswer = freezed,Object? correctAnswer = freezed,Object? explanation = freezed,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_Question(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answer?,multipleCorrectAnswer: freezed == multipleCorrectAnswer ? _self.multipleCorrectAnswer : multipleCorrectAnswer // ignore: cast_nullable_to_non_nullable
as String?,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as CorrectAnswer?,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswerCopyWith<$Res>? get answers {
    if (_self.answers == null) {
    return null;
  }

  return $AnswerCopyWith<$Res>(_self.answers!, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswerCopyWith<$Res>? get correctAnswer {
    if (_self.correctAnswer == null) {
    return null;
  }

  return $CorrectAnswerCopyWith<$Res>(_self.correctAnswer!, (value) {
    return _then(_self.copyWith(correctAnswer: value));
  });
}
}


/// @nodoc
mixin _$Answer {

@JsonKey(name: 'answer_a') String? get answerA;@JsonKey(name: 'answer_b') String? get answerB;@JsonKey(name: 'answer_c') String? get answerC;@JsonKey(name: 'answer_d') String? get answerD;@JsonKey(name: 'answer_e') String? get answerE;@JsonKey(name: 'answer_f') String? get answerF;
/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerCopyWith<Answer> get copyWith => _$AnswerCopyWithImpl<Answer>(this as Answer, _$identity);

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answer&&(identical(other.answerA, answerA) || other.answerA == answerA)&&(identical(other.answerB, answerB) || other.answerB == answerB)&&(identical(other.answerC, answerC) || other.answerC == answerC)&&(identical(other.answerD, answerD) || other.answerD == answerD)&&(identical(other.answerE, answerE) || other.answerE == answerE)&&(identical(other.answerF, answerF) || other.answerF == answerF));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerA,answerB,answerC,answerD,answerE,answerF);

@override
String toString() {
  return 'Answer(answerA: $answerA, answerB: $answerB, answerC: $answerC, answerD: $answerD, answerE: $answerE, answerF: $answerF)';
}


}

/// @nodoc
abstract mixin class $AnswerCopyWith<$Res>  {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) _then) = _$AnswerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answer_a') String? answerA,@JsonKey(name: 'answer_b') String? answerB,@JsonKey(name: 'answer_c') String? answerC,@JsonKey(name: 'answer_d') String? answerD,@JsonKey(name: 'answer_e') String? answerE,@JsonKey(name: 'answer_f') String? answerF
});




}
/// @nodoc
class _$AnswerCopyWithImpl<$Res>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._self, this._then);

  final Answer _self;
  final $Res Function(Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerA = freezed,Object? answerB = freezed,Object? answerC = freezed,Object? answerD = freezed,Object? answerE = freezed,Object? answerF = freezed,}) {
  return _then(_self.copyWith(
answerA: freezed == answerA ? _self.answerA : answerA // ignore: cast_nullable_to_non_nullable
as String?,answerB: freezed == answerB ? _self.answerB : answerB // ignore: cast_nullable_to_non_nullable
as String?,answerC: freezed == answerC ? _self.answerC : answerC // ignore: cast_nullable_to_non_nullable
as String?,answerD: freezed == answerD ? _self.answerD : answerD // ignore: cast_nullable_to_non_nullable
as String?,answerE: freezed == answerE ? _self.answerE : answerE // ignore: cast_nullable_to_non_nullable
as String?,answerF: freezed == answerF ? _self.answerF : answerF // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Answer].
extension AnswerPatterns on Answer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Answer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Answer value)  $default,){
final _that = this;
switch (_that) {
case _Answer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Answer value)?  $default,){
final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answer_a')  String? answerA, @JsonKey(name: 'answer_b')  String? answerB, @JsonKey(name: 'answer_c')  String? answerC, @JsonKey(name: 'answer_d')  String? answerD, @JsonKey(name: 'answer_e')  String? answerE, @JsonKey(name: 'answer_f')  String? answerF)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.answerA,_that.answerB,_that.answerC,_that.answerD,_that.answerE,_that.answerF);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answer_a')  String? answerA, @JsonKey(name: 'answer_b')  String? answerB, @JsonKey(name: 'answer_c')  String? answerC, @JsonKey(name: 'answer_d')  String? answerD, @JsonKey(name: 'answer_e')  String? answerE, @JsonKey(name: 'answer_f')  String? answerF)  $default,) {final _that = this;
switch (_that) {
case _Answer():
return $default(_that.answerA,_that.answerB,_that.answerC,_that.answerD,_that.answerE,_that.answerF);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answer_a')  String? answerA, @JsonKey(name: 'answer_b')  String? answerB, @JsonKey(name: 'answer_c')  String? answerC, @JsonKey(name: 'answer_d')  String? answerD, @JsonKey(name: 'answer_e')  String? answerE, @JsonKey(name: 'answer_f')  String? answerF)?  $default,) {final _that = this;
switch (_that) {
case _Answer() when $default != null:
return $default(_that.answerA,_that.answerB,_that.answerC,_that.answerD,_that.answerE,_that.answerF);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Answer extends Answer {
  const _Answer({@JsonKey(name: 'answer_a') required this.answerA, @JsonKey(name: 'answer_b') required this.answerB, @JsonKey(name: 'answer_c') required this.answerC, @JsonKey(name: 'answer_d') required this.answerD, @JsonKey(name: 'answer_e') required this.answerE, @JsonKey(name: 'answer_f') required this.answerF}): super._();
  factory _Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

@override@JsonKey(name: 'answer_a') final  String? answerA;
@override@JsonKey(name: 'answer_b') final  String? answerB;
@override@JsonKey(name: 'answer_c') final  String? answerC;
@override@JsonKey(name: 'answer_d') final  String? answerD;
@override@JsonKey(name: 'answer_e') final  String? answerE;
@override@JsonKey(name: 'answer_f') final  String? answerF;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerCopyWith<_Answer> get copyWith => __$AnswerCopyWithImpl<_Answer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answer&&(identical(other.answerA, answerA) || other.answerA == answerA)&&(identical(other.answerB, answerB) || other.answerB == answerB)&&(identical(other.answerC, answerC) || other.answerC == answerC)&&(identical(other.answerD, answerD) || other.answerD == answerD)&&(identical(other.answerE, answerE) || other.answerE == answerE)&&(identical(other.answerF, answerF) || other.answerF == answerF));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerA,answerB,answerC,answerD,answerE,answerF);

@override
String toString() {
  return 'Answer(answerA: $answerA, answerB: $answerB, answerC: $answerC, answerD: $answerD, answerE: $answerE, answerF: $answerF)';
}


}

/// @nodoc
abstract mixin class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) _then) = __$AnswerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answer_a') String? answerA,@JsonKey(name: 'answer_b') String? answerB,@JsonKey(name: 'answer_c') String? answerC,@JsonKey(name: 'answer_d') String? answerD,@JsonKey(name: 'answer_e') String? answerE,@JsonKey(name: 'answer_f') String? answerF
});




}
/// @nodoc
class __$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(this._self, this._then);

  final _Answer _self;
  final $Res Function(_Answer) _then;

/// Create a copy of Answer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerA = freezed,Object? answerB = freezed,Object? answerC = freezed,Object? answerD = freezed,Object? answerE = freezed,Object? answerF = freezed,}) {
  return _then(_Answer(
answerA: freezed == answerA ? _self.answerA : answerA // ignore: cast_nullable_to_non_nullable
as String?,answerB: freezed == answerB ? _self.answerB : answerB // ignore: cast_nullable_to_non_nullable
as String?,answerC: freezed == answerC ? _self.answerC : answerC // ignore: cast_nullable_to_non_nullable
as String?,answerD: freezed == answerD ? _self.answerD : answerD // ignore: cast_nullable_to_non_nullable
as String?,answerE: freezed == answerE ? _self.answerE : answerE // ignore: cast_nullable_to_non_nullable
as String?,answerF: freezed == answerF ? _self.answerF : answerF // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CorrectAnswer {

@JsonKey(name: "answer_a_correct") String? get answerACorrect;@JsonKey(name: "answer_b_correct") String? get answerBCorrect;@JsonKey(name: "answer_C_correct") String? get answerCCorrect;@JsonKey(name: "answer_d_correct") String? get answerDCorrect;@JsonKey(name: "answer_e_correct") String? get answerECorrect;@JsonKey(name: "answer_f_correct") String? get answerFCorrect;
/// Create a copy of CorrectAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectAnswerCopyWith<CorrectAnswer> get copyWith => _$CorrectAnswerCopyWithImpl<CorrectAnswer>(this as CorrectAnswer, _$identity);

  /// Serializes this CorrectAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectAnswer&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswer(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class $CorrectAnswerCopyWith<$Res>  {
  factory $CorrectAnswerCopyWith(CorrectAnswer value, $Res Function(CorrectAnswer) _then) = _$CorrectAnswerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "answer_a_correct") String? answerACorrect,@JsonKey(name: "answer_b_correct") String? answerBCorrect,@JsonKey(name: "answer_C_correct") String? answerCCorrect,@JsonKey(name: "answer_d_correct") String? answerDCorrect,@JsonKey(name: "answer_e_correct") String? answerECorrect,@JsonKey(name: "answer_f_correct") String? answerFCorrect
});




}
/// @nodoc
class _$CorrectAnswerCopyWithImpl<$Res>
    implements $CorrectAnswerCopyWith<$Res> {
  _$CorrectAnswerCopyWithImpl(this._self, this._then);

  final CorrectAnswer _self;
  final $Res Function(CorrectAnswer) _then;

/// Create a copy of CorrectAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_self.copyWith(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrectAnswer].
extension CorrectAnswerPatterns on CorrectAnswer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrectAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrectAnswer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrectAnswer value)  $default,){
final _that = this;
switch (_that) {
case _CorrectAnswer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrectAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _CorrectAnswer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_C_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrectAnswer() when $default != null:
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_C_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)  $default,) {final _that = this;
switch (_that) {
case _CorrectAnswer():
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "answer_a_correct")  String? answerACorrect, @JsonKey(name: "answer_b_correct")  String? answerBCorrect, @JsonKey(name: "answer_C_correct")  String? answerCCorrect, @JsonKey(name: "answer_d_correct")  String? answerDCorrect, @JsonKey(name: "answer_e_correct")  String? answerECorrect, @JsonKey(name: "answer_f_correct")  String? answerFCorrect)?  $default,) {final _that = this;
switch (_that) {
case _CorrectAnswer() when $default != null:
return $default(_that.answerACorrect,_that.answerBCorrect,_that.answerCCorrect,_that.answerDCorrect,_that.answerECorrect,_that.answerFCorrect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorrectAnswer extends CorrectAnswer {
  const _CorrectAnswer({@JsonKey(name: "answer_a_correct") this.answerACorrect, @JsonKey(name: "answer_b_correct") this.answerBCorrect, @JsonKey(name: "answer_C_correct") this.answerCCorrect, @JsonKey(name: "answer_d_correct") this.answerDCorrect, @JsonKey(name: "answer_e_correct") this.answerECorrect, @JsonKey(name: "answer_f_correct") this.answerFCorrect}): super._();
  factory _CorrectAnswer.fromJson(Map<String, dynamic> json) => _$CorrectAnswerFromJson(json);

@override@JsonKey(name: "answer_a_correct") final  String? answerACorrect;
@override@JsonKey(name: "answer_b_correct") final  String? answerBCorrect;
@override@JsonKey(name: "answer_C_correct") final  String? answerCCorrect;
@override@JsonKey(name: "answer_d_correct") final  String? answerDCorrect;
@override@JsonKey(name: "answer_e_correct") final  String? answerECorrect;
@override@JsonKey(name: "answer_f_correct") final  String? answerFCorrect;

/// Create a copy of CorrectAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectAnswerCopyWith<_CorrectAnswer> get copyWith => __$CorrectAnswerCopyWithImpl<_CorrectAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrectAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectAnswer&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswer(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class _$CorrectAnswerCopyWith<$Res> implements $CorrectAnswerCopyWith<$Res> {
  factory _$CorrectAnswerCopyWith(_CorrectAnswer value, $Res Function(_CorrectAnswer) _then) = __$CorrectAnswerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "answer_a_correct") String? answerACorrect,@JsonKey(name: "answer_b_correct") String? answerBCorrect,@JsonKey(name: "answer_C_correct") String? answerCCorrect,@JsonKey(name: "answer_d_correct") String? answerDCorrect,@JsonKey(name: "answer_e_correct") String? answerECorrect,@JsonKey(name: "answer_f_correct") String? answerFCorrect
});




}
/// @nodoc
class __$CorrectAnswerCopyWithImpl<$Res>
    implements _$CorrectAnswerCopyWith<$Res> {
  __$CorrectAnswerCopyWithImpl(this._self, this._then);

  final _CorrectAnswer _self;
  final $Res Function(_CorrectAnswer) _then;

/// Create a copy of CorrectAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_CorrectAnswer(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
