import 'package:get/get.dart';
import 'en_us/en_us_translations.dart';
import 'ar_su/ar_su_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,
    'ar_SU': arSu
  };
}