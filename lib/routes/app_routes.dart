import 'package:dhiwise_ecommerce/presentation/splash_screen/splash_screen.dart';
import 'package:dhiwise_ecommerce/presentation/splash_screen/binding/splash_binding.dart';
import 'package:dhiwise_ecommerce/presentation/login_screen/login_screen.dart';
import 'package:dhiwise_ecommerce/presentation/login_screen/binding/login_binding.dart';
import 'package:dhiwise_ecommerce/presentation/register_screen/register_screen.dart';
import 'package:dhiwise_ecommerce/presentation/register_screen/binding/register_binding.dart';
import 'package:dhiwise_ecommerce/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:dhiwise_ecommerce/presentation/dashboard_container_screen/binding/dashboard_container_binding.dart';
import 'package:dhiwise_ecommerce/presentation/super_flash_sale_screen/super_flash_sale_screen.dart';
import 'package:dhiwise_ecommerce/presentation/super_flash_sale_screen/binding/super_flash_sale_binding.dart';
import 'package:dhiwise_ecommerce/presentation/favorite_product_screen/favorite_product_screen.dart';
import 'package:dhiwise_ecommerce/presentation/favorite_product_screen/binding/favorite_product_binding.dart';
import 'package:dhiwise_ecommerce/presentation/product_detail_tab_container_screen/product_detail_tab_container_screen.dart';
import 'package:dhiwise_ecommerce/presentation/product_detail_tab_container_screen/binding/product_detail_tab_container_binding.dart';
import 'package:dhiwise_ecommerce/presentation/review_product_screen/review_product_screen.dart';
import 'package:dhiwise_ecommerce/presentation/review_product_screen/binding/review_product_binding.dart';
import 'package:dhiwise_ecommerce/presentation/write_review_fill_screen/write_review_fill_screen.dart';
import 'package:dhiwise_ecommerce/presentation/write_review_fill_screen/binding/write_review_fill_binding.dart';
import 'package:dhiwise_ecommerce/presentation/notification_screen/notification_screen.dart';
import 'package:dhiwise_ecommerce/presentation/notification_screen/binding/notification_binding.dart';
import 'package:dhiwise_ecommerce/presentation/notification_offer_screen/notification_offer_screen.dart';
import 'package:dhiwise_ecommerce/presentation/notification_offer_screen/binding/notification_offer_binding.dart';
import 'package:dhiwise_ecommerce/presentation/notification_feed_screen/notification_feed_screen.dart';
import 'package:dhiwise_ecommerce/presentation/notification_feed_screen/binding/notification_feed_binding.dart';
import 'package:dhiwise_ecommerce/presentation/notification_activity_screen/notification_activity_screen.dart';
import 'package:dhiwise_ecommerce/presentation/notification_activity_screen/binding/notification_activity_binding.dart';
import 'package:dhiwise_ecommerce/presentation/search_screen/search_screen.dart';
import 'package:dhiwise_ecommerce/presentation/search_screen/binding/search_binding.dart';
import 'package:dhiwise_ecommerce/presentation/search_result_screen/search_result_screen.dart';
import 'package:dhiwise_ecommerce/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:dhiwise_ecommerce/presentation/search_result_no_data_found_screen/search_result_no_data_found_screen.dart';
import 'package:dhiwise_ecommerce/presentation/search_result_no_data_found_screen/binding/search_result_no_data_found_binding.dart';
import 'package:dhiwise_ecommerce/presentation/list_category_screen/list_category_screen.dart';
import 'package:dhiwise_ecommerce/presentation/list_category_screen/binding/list_category_binding.dart';
import 'package:dhiwise_ecommerce/presentation/sort_by_screen/sort_by_screen.dart';
import 'package:dhiwise_ecommerce/presentation/sort_by_screen/binding/sort_by_binding.dart';
import 'package:dhiwise_ecommerce/presentation/filter_tab_container_screen/filter_tab_container_screen.dart';
import 'package:dhiwise_ecommerce/presentation/filter_tab_container_screen/binding/filter_tab_container_binding.dart';
import 'package:dhiwise_ecommerce/presentation/ship_to_screen/ship_to_screen.dart';
import 'package:dhiwise_ecommerce/presentation/ship_to_screen/binding/ship_to_binding.dart';
import 'package:dhiwise_ecommerce/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:dhiwise_ecommerce/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:dhiwise_ecommerce/presentation/choose_credit_or_debit_card_screen/choose_credit_or_debit_card_screen.dart';
import 'package:dhiwise_ecommerce/presentation/choose_credit_or_debit_card_screen/binding/choose_credit_or_debit_card_binding.dart';
import 'package:dhiwise_ecommerce/presentation/success_screen/success_screen.dart';
import 'package:dhiwise_ecommerce/presentation/success_screen/binding/success_binding.dart';
import 'package:dhiwise_ecommerce/presentation/profile_screen/profile_screen.dart';
import 'package:dhiwise_ecommerce/presentation/profile_screen/binding/profile_binding.dart';
import 'package:dhiwise_ecommerce/presentation/change_password_screen/change_password_screen.dart';
import 'package:dhiwise_ecommerce/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:dhiwise_ecommerce/presentation/order_screen/order_screen.dart';
import 'package:dhiwise_ecommerce/presentation/order_screen/binding/order_binding.dart';
import 'package:dhiwise_ecommerce/presentation/order_details_screen/order_details_screen.dart';
import 'package:dhiwise_ecommerce/presentation/order_details_screen/binding/order_details_binding.dart';
import 'package:dhiwise_ecommerce/presentation/add_address_screen/add_address_screen.dart';
import 'package:dhiwise_ecommerce/presentation/add_address_screen/binding/add_address_binding.dart';
import 'package:dhiwise_ecommerce/presentation/address_screen/address_screen.dart';
import 'package:dhiwise_ecommerce/presentation/address_screen/binding/address_binding.dart';
import 'package:dhiwise_ecommerce/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:dhiwise_ecommerce/presentation/add_payment_screen/binding/add_payment_binding.dart';
import 'package:dhiwise_ecommerce/presentation/credit_card_and_debit_screen/credit_card_and_debit_screen.dart';
import 'package:dhiwise_ecommerce/presentation/credit_card_and_debit_screen/binding/credit_card_and_debit_binding.dart';
import 'package:dhiwise_ecommerce/presentation/add_card_screen/add_card_screen.dart';
import 'package:dhiwise_ecommerce/presentation/add_card_screen/binding/add_card_binding.dart';
import 'package:dhiwise_ecommerce/presentation/lailyfa_febrina_card_screen/lailyfa_febrina_card_screen.dart';
import 'package:dhiwise_ecommerce/presentation/lailyfa_febrina_card_screen/binding/lailyfa_febrina_card_binding.dart';
import 'package:dhiwise_ecommerce/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dhiwise_ecommerce/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String superFlashSaleScreen = '/super_flash_sale_screen';

  static const String favoriteProductScreen = '/favorite_product_screen';

  static const String productDetailPage = '/product_detail_page';

  static const String productDetailTabContainerScreen =
      '/product_detail_tab_container_screen';

  static const String reviewProductScreen = '/review_product_screen';

  static const String writeReviewFillScreen = '/write_review_fill_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationOfferScreen = '/notification_offer_screen';

  static const String notificationFeedScreen = '/notification_feed_screen';

  static const String notificationActivityScreen =
      '/notification_activity_screen';

  static const String explorePage = '/explore_page';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String searchResultNoDataFoundScreen =
      '/search_result_no_data_found_screen';

  static const String listCategoryScreen = '/list_category_screen';

  static const String sortByScreen = '/sort_by_screen';

  static const String filterPage = '/filter_page';

  static const String filterTabContainerScreen = '/filter_tab_container_screen';

  static const String cartPage = '/cart_page';

  static const String shipToScreen = '/ship_to_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String chooseCreditOrDebitCardScreen =
      '/choose_credit_or_debit_card_screen';

  static const String successScreen = '/success_screen';

  static const String offerScreenPage = '/offer_screen_page';

  static const String accountPage = '/account_page';

  static const String profileScreen = '/profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String orderScreen = '/order_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String addressScreen = '/address_screen';

  static const String addPaymentScreen = '/add_payment_screen';

  static const String creditCardAndDebitScreen =
      '/credit_card_and_debit_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String lailyfaFebrinaCardScreen = '/lailyfa_febrina_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: dashboardContainerScreen,
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    ),
    GetPage(
      name: superFlashSaleScreen,
      page: () => SuperFlashSaleScreen(),
      bindings: [
        SuperFlashSaleBinding(),
      ],
    ),
    GetPage(
      name: favoriteProductScreen,
      page: () => FavoriteProductScreen(),
      bindings: [
        FavoriteProductBinding(),
      ],
    ),
    GetPage(
      name: productDetailTabContainerScreen,
      page: () => ProductDetailTabContainerScreen(),
      bindings: [
        ProductDetailTabContainerBinding(),
      ],
    ),
    GetPage(
      name: reviewProductScreen,
      page: () => ReviewProductScreen(),
      bindings: [
        ReviewProductBinding(),
      ],
    ),
    GetPage(
      name: writeReviewFillScreen,
      page: () => WriteReviewFillScreen(),
      bindings: [
        WriteReviewFillBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationOfferScreen,
      page: () => NotificationOfferScreen(),
      bindings: [
        NotificationOfferBinding(),
      ],
    ),
    GetPage(
      name: notificationFeedScreen,
      page: () => NotificationFeedScreen(),
      bindings: [
        NotificationFeedBinding(),
      ],
    ),
    GetPage(
      name: notificationActivityScreen,
      page: () => NotificationActivityScreen(),
      bindings: [
        NotificationActivityBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: searchResultNoDataFoundScreen,
      page: () => SearchResultNoDataFoundScreen(),
      bindings: [
        SearchResultNoDataFoundBinding(),
      ],
    ),
    GetPage(
      name: listCategoryScreen,
      page: () => ListCategoryScreen(),
      bindings: [
        ListCategoryBinding(),
      ],
    ),
    GetPage(
      name: sortByScreen,
      page: () => SortByScreen(),
      bindings: [
        SortByBinding(),
      ],
    ),
    GetPage(
      name: filterTabContainerScreen,
      page: () => FilterTabContainerScreen(),
      bindings: [
        FilterTabContainerBinding(),
      ],
    ),
    GetPage(
      name: shipToScreen,
      page: () => ShipToScreen(),
      bindings: [
        ShipToBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: chooseCreditOrDebitCardScreen,
      page: () => ChooseCreditOrDebitCardScreen(),
      bindings: [
        ChooseCreditOrDebitCardBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: orderScreen,
      page: () => OrderScreen(),
      bindings: [
        OrderBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: addAddressScreen,
      page: () => AddAddressScreen(),
      bindings: [
        AddAddressBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: addPaymentScreen,
      page: () => AddPaymentScreen(),
      bindings: [
        AddPaymentBinding(),
      ],
    ),
    GetPage(
      name: creditCardAndDebitScreen,
      page: () => CreditCardAndDebitScreen(),
      bindings: [
        CreditCardAndDebitBinding(),
      ],
    ),
    GetPage(
      name: addCardScreen,
      page: () => AddCardScreen(),
      bindings: [
        AddCardBinding(),
      ],
    ),
    GetPage(
      name: lailyfaFebrinaCardScreen,
      page: () => LailyfaFebrinaCardScreen(),
      bindings: [
        LailyfaFebrinaCardBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
