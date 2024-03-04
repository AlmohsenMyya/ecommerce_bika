import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/presentation/search_result_screen/models/search_result_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultScreen.
///
/// This class manages the state of the SearchResultScreen, including the
/// current searchResultModelObj
class SearchResultController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in searchResultModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    searchResultModelObj.value.dropdownItemList.refresh();
  }
}
