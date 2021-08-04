import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_sample/models/article.dart';

part 'articles_state.freezed.dart';
part 'articles_state.g.dart';

@freezed
abstract class ArticlesState with _$ArticlesState {
  const factory ArticlesState({
    @Default([]) List<Article> articles,
    @Default(true) bool hasNext,
    @Default('') String keyword,
  }) = _ArticlesState;

  factory ArticlesState.fromJson(Map<String, dynamic> json) => _$ArticlesStateFromJson(json);
}
