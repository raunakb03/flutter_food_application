import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:get/get.dart';

// to get data from internet class should extend getx service
class PopularProductRepo extends GetxService {
  PopularProductRepo({required this.apiClient});
  final ApiClient apiClient;

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstatns.POPULAR_PRODUCT_URI);
  }
}
