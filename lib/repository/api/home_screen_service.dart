import 'package:http/http.dart';
import 'package:shopping_cart_may/models/home_screen_model/all_products_response_model.dart';
import 'package:shopping_cart_may/models/home_screen_model/categories_response_model.dart';
import 'package:shopping_cart_may/repository/helpers/api_helper.dart';

class HomeScreenService {
  //fetching categories
  Future<List<CategoriesResModel>?> fetchCategories() async {
    final resBody = await ApiHelper.getData(endpoint: "/products/categories");
    if (resBody != null) {
      final resModel = categoriesResModelFromJson(resBody);
      return resModel;
    } else {
      return null;
    }
  }

  //fetching details of all products
  Future<AllProductsResModel?> fetchAllProducts() async {
    final res = await ApiHelper.getData(endpoint: "/products");
    if (res != null) {
      final resModel = allProductsResModelFromJson(res);
      return resModel;
    } else {
      return null;
    }
  }

  //fetching details of all products class version
  Future<List<CategoriesResModel>?> fetchProducts({String? category}) async {
    String? url;
    if (category == "all") {
      url = "/products";
    } else {
      url = "/products/category/$category";
    }

    final res = await ApiHelper.getData(endpoint: url);
    if (res != null) {
      final resModel = allProductsResModelFromJson(res);
      //return resModel;
    } else {
      return null;
    }
  }
}
