import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mvvm_project_flutter/repository/news_repo/news_repo_impl.dart';
import '../../data/remote/api_response.dart';
import '../../models/news_api.dart';

class NewsVM extends GetxController {
  final userRepo = NewsRepoImpl();
  ApiResponse<NewsApi> users = ApiResponse.loading();
  List<Datum> newsList = List.empty(growable: true);

  void onNewsLoaded(ApiResponse<NewsApi> response) {
    newsList.addAll(response.data!.data);
    update();
  }



  void fetchUsers() async {
    //onUsersLoaded(ApiResponse.loading());
    userRepo
        .getNewsFromRepo()
        .then((value) => onNewsLoaded(ApiResponse.completed(value)))
        .onError((error, stackTrace) =>
            onNewsLoaded(ApiResponse.error("Unable to Fetch")));
  }

  void init() async {
    fetchUsers();
  }

  @override
  void onInit() {
    super.onInit();
    init();
  }
}
