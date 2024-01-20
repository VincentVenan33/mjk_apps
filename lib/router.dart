import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/views/authentication/login_view.dart';
import 'package:mjk_apps/ui/views/dashboard_view.dart';
import 'package:mjk_apps/ui/views/katalog/detail_katalog_produk_owner.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_owner_view.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';
import 'package:mjk_apps/ui/views/sales_order/approval_order_penjualan_view.dart';
import 'package:mjk_apps/ui/views/splash_screen_view.dart';

final RouteObserver<PageRoute<dynamic>> routeObserver = RouteObserver<PageRoute<dynamic>>();

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    MaterialPageRoute<T>? buildRoute<T>({
      required Widget Function(BuildContext) builder,
      bool fullscreenDialog = false,
    }) {
      return MaterialPageRoute<T>(
        settings: settings,
        builder: builder,
        fullscreenDialog: fullscreenDialog,
      );
    }

    switch (settings.name) {
      case Routes.splashScreen:
        return buildRoute(
          builder: (_) => const SplashScreenView(),
        );
      case Routes.navBarOwner:
        return buildRoute(
          builder: (_) => const NavbarOwnerView(),
        );

      case Routes.navBarSales:
        return buildRoute(
          builder: (_) => const NavbarSalesView(),
        );

      case Routes.dashboard:
        return buildRoute(
          builder: (_) => const DashboardView(),
        );
      case Routes.approvalOrderJual:
        return buildRoute(
          builder: (_) => const ApprovalOrderPenjualanView(),
        );

      /// Acount
      // case Routes.profile:
      //   return buildRoute(
      //     builder: (_) => const ProfileView(),
      //   );
      // case Routes.editProfile:
      //   return buildRoute(
      //     builder: (_) => const EditProfileView(),
      //   );
      // case Routes.setting:
      //   return buildRoute(
      //     builder: (_) => const SettingView(),
      //   );
      // case Routes.changePassword:
      //   return buildRoute(
      //     builder: (_) => const ChangePasswordView(),
      //   );
      // case Routes.inputEmail:
      //   return buildRoute(
      //     builder: (_) => const InputEmailView(),
      //   );
      // case Routes.inputAddress:
      //   return buildRoute(
      //     builder: (_) => const InputAddressView(),
      //   );

      // Authentication
      case Routes.login:
        final LoginViewParam param =
            settings.arguments is LoginViewParam ? settings.arguments as LoginViewParam : LoginViewParam();
        return buildRoute(
          builder: (_) => LoginView(
            param: param,
          ),
        );

      case Routes.DetailCatalog:
        return buildRoute(
          builder: (_) => const DetailkatalogProduk(),
        );

      default:
        return null;
    }
  }
}
