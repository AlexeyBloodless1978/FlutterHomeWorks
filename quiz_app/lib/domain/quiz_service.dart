import 'package:dio/dio.dart';
import 'package:quiz_app/domain/models/models.dart';

abstract interface class QuizService {
  Future<List<Category>> fetchCategories();

  Future<List<Question>> fetchQuestions(String category);
}

class QuizServiceImpl implements QuizService {
  final Dio dio;

  const QuizServiceImpl({required this.dio});

  @override
  Future<List<Category>> fetchCategories() async {
    final response = await dio.get('/v1/categories');
    final categoriesJson = response.data as List<dynamic>;

    return categoriesJson
        .map((json) => Category.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<Question>> fetchQuestions(String category) async {
    final response = await dio.get(
      '/v1/questions',
      queryParameters: {'limit': 3, 'category': category},
    );

    final questionsJson = response.data as List<dynamic>;

    return questionsJson
        .map((e) => Question.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
