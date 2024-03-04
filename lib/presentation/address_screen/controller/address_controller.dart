import 'package:dhiwise_ecommerce/core/app_export.dart';
import 'package:dhiwise_ecommerce/presentation/address_screen/models/address_model.dart';

/// A controller class for the AddressScreen.
///
/// This class manages the state of the AddressScreen, including the
/// current addressModelObj
class AddressController extends GetxController {
  Rx<AddressModel> addressModelObj = AddressModel().obs;
}
