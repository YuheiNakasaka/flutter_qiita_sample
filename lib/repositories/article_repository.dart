import 'package:qiita_sample/apis/qiita_api.dart';
import 'package:qiita_sample/models/article.dart';

class ArticleRepository {
  final _api = QiitaApiClient();

  Future<List<Article>> fetchArticles(int page, String keyword) async {
    return _api.fetchArticles(page, keyword);
  }
}
