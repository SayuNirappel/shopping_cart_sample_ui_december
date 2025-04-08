import 'package:shopping_cart_may/models/home_screen_model/categories_response_model.dart';
import 'package:shopping_cart_may/repository/helpers/api_helper.dart';

class HomeScreenService {
  Future<List<CategoriesResModel>?> fetchCategories() async {
    final resBody = await ApiHelper.getData(endpoint: "/products/categories");
    if (resBody != null) {
      final resModel = categoriesResModelFromJson(resBody);
      return resModel;
    } else {
      return null;
    }
  }
}
