import '../../models/news_api.dart';

abstract class NewsRepo {
  Future<NewsApi?> getNewsFromRepo();
}
