import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:get/get.dart';

// to get data from internet class should extend getx service
class RecommendedProductRepo extends GetxService {
  RecommendedProductRepo({required this.apiClient});
  final ApiClient apiClient;

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
