import 'package:flutter/material.dart';
import 'package:shopping_cart_may/models/home_screen_model/categories_response_model.dart';
import 'package:shopping_cart_may/repository/api/home_screen_service.dart';

class HomeScreenController with ChangeNotifier {
  bool isLoading = false;
  List<CategoriesResModel> categoriesList = [];

  //fetch all categories from the api
  Future<void> fetchCategories() async {
    isLoading = true;
    notifyListeners();

    try {
      final res = await HomeScreenService().fetchCategories();
      if (res != null) {
        categoriesList = res ?? [];
        isLoading = false;
        notifyListeners();
      }
    } catch (e) {
      isLoading = false;
      notifyListeners();
    }
  }
}
