import 'package:get/get.dart';
import '../../view_model/news_viewmodel/news_viewmodel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(NewsVM());
  }
}
