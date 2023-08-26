import 'package:food_app/data/repository/cart_repo.dart';
import 'package:food_app/models/card_model.dart';
import 'package:food_app/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  CartController({required this.cartRepo});
  final CartRepo cartRepo;
  final Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    if (_items.containsKey(product.id!)) {
      _items.update(
        product.id!,
        (existingItem) => CartModel(
          id: existingItem.id,
          name: existingItem.name,
          price: existingItem.price,
          img: existingItem.img,
          quantity: existingItem.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id!,
        () => CartModel(
          id: product.id,
          name: product.name,
          price: product.price,
          img: product.img,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString(),
        ),
      );
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}
