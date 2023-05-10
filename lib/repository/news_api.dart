import 'dart:convert';
import 'package:bashorts_news_app/repository/abstract_class_repository.dart';
import '/model/article_model.dart';
import 'package:http/http.dart' as http;
import '../model/articles_list_model.dart';

class NewsApi extends ClassRepository {
  // put the API key here
  var keyApi = "8ad3a0ff33eb4bfe84e7be15ea46a6ea";

  @override
  Future<List<ArticleModel>> getAllNews() async {
    try {
      var url =
          ("https://newsapi.org/v2/top-headlines?country=in&apiKey=$keyApi"); //api
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ArticlesListModel articles = ArticlesListModel.fromMap(jsonData);
        List<ArticleModel> articlesListModel =
            articles.articles!.map((e) => ArticleModel.fromMap(e)).toList();
        return articlesListModel;
      } else {
        // here shacked number status code
        print("status code#ali# = ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
    throw Exception("here ali Exception code staus");
  }

  @override
  Future<List<ArticleModel>> getCategory(String category) async {
    try {
      var url =
          ("https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=$keyApi"); //api
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        ArticlesListModel articles = ArticlesListModel.fromMap(jsonData);
        List<ArticleModel> articlesListModel =
            articles.articles!.map((e) => ArticleModel.fromMap(e)).toList();
        return articlesListModel;
      } else {
        // here shacked number status code
        // ignore: avoid_print
        print("status code#ali# = ${response.statusCode}");
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    throw Exception("here ali Exception code status");
  }
}
