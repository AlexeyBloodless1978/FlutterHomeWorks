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

 // bool _isLoading = false;
  //List<Category> categories = List.empty();

  @override
  Widget build(BuildContext context) {
   final appProvider = AppProvider.of(context);
   final quizService = appProvider.quizService;

    return Scaffold(
      appBar: AppBar(title:  Text(S.of(context).categories_title),centerTitle: true,),
      body: SafeArea
        (child: FutureBuilder(future: Future.value(), builder: (context, snapshot){
          final error = snapshot.error;
          final items=snapshot.data ?? List.empty();
          final isLoading = snapshot.connectionState == ConnectionState.waiting;

          if (isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
             if (error != null) {
               return Center(
                 child: Text(error.toString()),
               );
             }



        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];

            return ListTile(
              title: Text(item.id),
              subtitle: Text(item.name),
              onTap:() {
                final category = item.name ?? '';

                route.questions.push(
                    GoRouter.of(context),
                    category: category);
              } ,
            );
          },
        );


      })
      ),
    );
  }
}
