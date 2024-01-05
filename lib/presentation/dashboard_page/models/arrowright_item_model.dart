import '../../../core/app_export.dart';/// This class is used in the [arrowright_item_widget] screen.
class ArrowrightItemModel {ArrowrightItemModel({this.arrowRight, this.manShirt, this.id, }) { arrowRight = arrowRight  ?? Rx(ImageConstant.imgArrowRight);manShirt = manShirt  ?? Rx("Man Shirt");id = id  ?? Rx(""); }

Rx<String>? arrowRight;

Rx<String>? manShirt;

Rx<String>? id;

 }
