import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routes/categories_route.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import '/generated/l10n.dart';

class CategoriesPage extends StatefulWidget {
  final CategoriesRoute route;


  const CategoriesPage ({required this.route, super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  CategoriesRoute get route => widget.route;
  AppProvider get appProvider => AppProvider.of(context);
 // bool _isLoading = false;
  //List<Category> categories = List.empty();

  @override
  Widget build(BuildContext context) {

  // final quizService = appProvider.quizService;

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).categories_title), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const .all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: FutureBuilder(
                future: appProvider.quizService.fetchCategories(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final categories = snapshot.data;
                    if (categories!.isEmpty) {
                      return Text(
                        S.of(context).no_categories,
                        style: const TextStyle(fontSize: 20),
                      );
                    }
                    return Scrollbar(
                      child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          final name = categories[index].name;
                          return Padding(
                            padding: const EdgeInsetsGeometry.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            child: TextButton(
                              onPressed: () {

                                route.questions.push(GoRouter.of(context), category: name);
                              },
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                name,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                      S.of(context).error(snapshot.error ?? S.of(context).unknown_error),

                      style: const TextStyle(fontSize: 20),
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .center,
                      children: [
                        const CircularProgressIndicator(color: Colors.black),
                        const SizedBox(height: 16),
                        Text(
                          S.of(context).loading,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}