import 'package:food_app/data/api/api_client.dart';
import 'package:get/get.dart';

// to get data from internet class should extend getx service
class PopularProductRepo extends GetxService {
  PopularProductRepo({required this.apiClient});
  final ApiClient apiClient;

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("/api/v1/products/popular");
  }
}
