import 'package:equatable/equatable.dart';
import 'package:flutter_news_app/features/daily_news/domain/entities/article.dart';
import 'package:dio/dio.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioError? error;

  const RemoteArticlesState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleEntity> article)
      : super(articles: article);
}

class RemoteArticleError extends RemoteArticlesState {
  const RemoteArticleError(DioError error) : super(error: error);
}
