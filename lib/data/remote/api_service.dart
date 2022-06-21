import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_interface.dart';
import 'endpoints.dart';

class ApiService extends ApiInterface {
  @override
  Future? getNews() async {
    var client = http.Client();
    dynamic responseJson;
    final response =
        await client.get(Uri.parse(ApiInterface.baseUrl + Endpoints.users));
    responseJson = returnResponse(response);
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
      //throw BadRequestException(response.toString());
      case 401:
      case 403:
      //throw UnauthorisedException(response.body.toString());
      case 404:
      //throw UnauthorisedException(response.body.toString());
      case 500:
      default:

    }
  }
}
