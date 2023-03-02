
import 'package:my_app_bloc/src/model/article.dart';

abstract class NewsRepositoryBase{
  Future<List<Article>> topHeadlines(String country);
}