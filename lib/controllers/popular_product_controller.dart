import 'package:flutter/material.dart';
import 'package:food_app/controllers/cart_controller.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/models/products_model.dart';
import 'package:food_app/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  PopularProductController({required this.popularProductRepo});

  // getting products from the backend
  final PopularProductRepo popularProductRepo;
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); // this is like setState()
    } else {}
  }

  // loading function
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  // adding items to cart stuffs
  int _quantity = 0;
  int _inCartItems = 0;
  late CartController _cart;

  int get quantity => _quantity;
  int get inCartItems => _inCartItems + _quantity;

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity++;
    } else {
      _quantity--;
    }
    _quantity = checkQuantity(_quantity);
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar(
        "Item Count",
        "Item count can't be less than 0",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      if (_inCartItems > 0) {
        _quantity = -_inCartItems;
        return _quantity;
      }
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar(
        "Item Count",
        "Item count can't be more than 20",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    }
    return quantity;
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    if (exist) {
      _inCartItems = cart.getQuantity(product);
    }
    // get from storage
  }

  void addItem(ProductModel product) {
    _cart.addItem(product, _quantity);
    _quantity = 0;
    _inCartItems = _cart.getQuantity(product);

    update();
  }

  int get totalItmes {
    return _cart.totalItems;
  }
}
