import 'package:dio/dio.dart';
import 'package:qiita_sample/models/article.dart';

class QiitaApiClient {
  Future<List<Article>> fetchArticles(int page, String keyword) async {
    final response = await Dio().get(
      'https://qiita.com/api/v2/items?per_page=20',
      queryParameters: {
        'page': page,
        'per_page': 20,
        if (keyword != '') 'query': 'body:$keyword or tag:$keyword',
      },
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": " Bearer <YOUR-TOKEN>",
        },
      ),
    );

    final rawData = response.data as List<dynamic>;
    return rawData.map((dynamic i) => Article.fromJson(i as Map<String, dynamic>)).toList();
  }
}
