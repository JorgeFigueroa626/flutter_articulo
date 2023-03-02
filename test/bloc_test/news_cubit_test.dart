import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_app_bloc/src/bloc/news_cubit.dart';
import 'package:my_app_bloc/src/model/article.dart';
import 'package:my_app_bloc/src/provider/news_provider.dart';
import 'package:my_app_bloc/src/repository/news_repository.dart';

import 'news_cubit_test.mocks.dart';

@GenerateMocks([NewsRepositoryBase])
void main() {

  group('Cubit test', () {
    final article = Article(title: 'Test', author: 'Yayo');
    final mockRepo = MockNewsRepositoryBase();

    blocTest<NewsCubit, NewsState>(
    'News will be loader correctly',
      build: () {
      when(mockRepo.topHeadlines(any)).thenAnswer((_) async => [article]);
      return NewsCubit(mockRepo);
      },
      act: (cubit) async => cubit.loadTopNews(),
      expect: () => [
        NewsLoadingState(),
        NewsLoadCompletedState([article])
      ],
    );

    blocTest<NewsCubit, NewsState>(
      'Apikey exception is handled correctly',
      build: () {
        when(mockRepo.topHeadlines(any)).thenAnswer((_) async => throw ApiKeyInvalidException());
        return NewsCubit(mockRepo);
      },
      act: (cubit) async => cubit.loadTopNews(),
      expect: () => [
        NewsLoadingState(),
        NewsErrorState('The Api key is invalid')
      ],
    );



  });

}