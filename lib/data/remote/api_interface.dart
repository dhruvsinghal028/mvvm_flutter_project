abstract class ApiInterface {
  static const baseUrl = "https://inshorts.deta.dev/";

  Future<dynamic>? getNews();
}
