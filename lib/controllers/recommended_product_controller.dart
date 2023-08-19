import 'package:food_app/data/repository/recommended_product_repo.dart';
import 'package:food_app/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  RecommendedProductController({required this.recommendedProductRepo});

  final RecommendedProductRepo recommendedProductRepo;
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); // this is like setState()
    } else {}
  }
}
