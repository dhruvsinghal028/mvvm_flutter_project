import '../../data/remote/api_service.dart';
import '../../models/news_api.dart';
import 'news_repo.dart';

class NewsRepoImpl extends NewsRepo {
  ApiService apiService = ApiService();

  @override
  Future<NewsApi?> getNewsFromRepo() async {
    dynamic response = await apiService.getNews();
    // debugPrint("NEWS REPO $response");
    final jsonData = NewsApi.fromJson(response);
    return jsonData;
  }
}
