
import 'package:my_app_bloc/src/model/article.dart';
import 'package:my_app_bloc/src/provider/news_provider.dart';
import 'package:my_app_bloc/src/repository/news_repository.dart';

class NewsRepository extends NewsRepositoryBase {
  final NewsProvider _provider;

  NewsRepository(this._provider);

  @override
  Future<List<Article>> topHeadlines(String country) => _provider.topHeadlines(country);
}