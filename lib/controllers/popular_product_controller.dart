import 'package:food_app/data/api/repository/popular_product_repo.dart';
import 'package:food_app/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  PopularProductController({required this.popularProductRepo});

  final PopularProductRepo popularProductRepo;
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update(); // this is like setState()
    } else {}
  }
}
