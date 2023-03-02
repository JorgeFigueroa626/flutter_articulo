import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_bloc/src/navigation/routes.dart';
import 'package:my_app_bloc/src/provider/news_provider.dart';
import 'package:my_app_bloc/src/repository/implementation/news_repository.dart';
import 'package:my_app_bloc/src/repository/news_repository.dart';
import 'package:my_app_bloc/src/ui/news_screen.dart';

void main() {

  final newsProvider = NewsProvider();
  final newsRepository = NewsRepository(newsProvider);

  runApp( RepositoryProvider<NewsRepositoryBase>(
    create: (_) => newsRepository,
    child:const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => Routes.routes(settings),
    );
  }
}
