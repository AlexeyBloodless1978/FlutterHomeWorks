// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(category) => "Категория ${category}";

  static String m1(value) => "Количество верных ответов: ${value}";

  static String m2(value) => "Ошибка: ${value}";

  static String m3(value) => "Ваша эл.пеочта верифицирована: ${value}";

  static String m4(index, count) => "Вопрос ${index}/${count}";

  static String m5(value) => "Ваша эл.почта: ${value}";

  static String m6(value) => "Ваш id: ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "authorization_title": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "autorization_page": MessageLookupByLibrary.simpleMessage(
      "Страница авторизации",
    ),
    "back_button": MessageLookupByLibrary.simpleMessage("Вернутся назад"),
    "bad_email_message_1": MessageLookupByLibrary.simpleMessage(
      "Введите пожалуйста электронную почту",
    ),
    "bad_email_message_2": MessageLookupByLibrary.simpleMessage(
      "Введите корректную электронную почту",
    ),
    "bad_password_message_1": MessageLookupByLibrary.simpleMessage(
      "Введите пароль",
    ),
    "bad_password_message_2": MessageLookupByLibrary.simpleMessage(
      "Пароль должен иметь минимум 6 символов",
    ),
    "categories_title": MessageLookupByLibrary.simpleMessage("Категории"),
    "category": m0,
    "count_correct_answers": m1,
    "email_field": MessageLookupByLibrary.simpleMessage("Эл.Почта"),
    "enter_text": MessageLookupByLibrary.simpleMessage("Войти"),
    "enter_text_line_1": MessageLookupByLibrary.simpleMessage(
      "Для авторизации введите электронную почту и пароль",
    ),
    "error": m2,
    "hello": MessageLookupByLibrary.simpleMessage("Привет мир (App Quiz (my))"),
    "is_email_verified": m3,
    "loading": MessageLookupByLibrary.simpleMessage("Загружается"),
    "login_button": MessageLookupByLibrary.simpleMessage("Войти"),
    "logout_button": MessageLookupByLibrary.simpleMessage("Выйти"),
    "main_page_title": MessageLookupByLibrary.simpleMessage("Главный экран"),
    "no": MessageLookupByLibrary.simpleMessage("Нет"),
    "no_categories": MessageLookupByLibrary.simpleMessage(
      "Нет найдены категории викторины",
    ),
    "password_field": MessageLookupByLibrary.simpleMessage("Пароль"),
    "profile_button": MessageLookupByLibrary.simpleMessage("Профиль"),
    "profile_title": MessageLookupByLibrary.simpleMessage(
      "Профиль пользователя",
    ),
    "question_number": m4,
    "quiz_title": MessageLookupByLibrary.simpleMessage("Викторина"),
    "register_text_line_1": MessageLookupByLibrary.simpleMessage(
      "Для регистрации введите коректную электронную почту и пароль",
    ),
    "register_title": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "registr_button": MessageLookupByLibrary.simpleMessage(
      "Зарегестрироваться",
    ),
    "result_title": MessageLookupByLibrary.simpleMessage("Результат"),
    "start_button": MessageLookupByLibrary.simpleMessage("Начать"),
    "unknown_error": MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
    "yes": MessageLookupByLibrary.simpleMessage("Да"),
    "your_email": m5,
    "your_id": m6,
  };
}
