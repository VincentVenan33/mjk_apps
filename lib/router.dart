import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/activityandcustomer.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/customer/addcustomer.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/customer/customer.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/customer/detailcustomer.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/omset.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/piutang.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/salesactivity/addsalesactivy.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/salesactivity/editsalesactivity.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/salesactivity/salesactivity.dart';
import 'package:mjk_apps/ui/views/akun/profile.dart';
import 'package:mjk_apps/ui/views/akun/ubahpassword.dart';
import 'package:mjk_apps/ui/views/approval/approval.dart';
import 'package:mjk_apps/ui/views/approval/detailorder.dart';
import 'package:mjk_apps/ui/views/authentication/login_view.dart';
import 'package:mjk_apps/ui/views/dashboard_view.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_owner_view.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';
import 'package:mjk_apps/ui/views/nofitifikasi/notifikasi.dart';
import 'package:mjk_apps/ui/views/orderjual/additemdetail.dart';
import 'package:mjk_apps/ui/views/orderjual/addorderjual.dart';
import 'package:mjk_apps/ui/views/orderjual/daftarprderjual.dart';
import 'package:mjk_apps/ui/views/orderjual/detailorder.dart';
import 'package:mjk_apps/ui/views/orderjual/itemdetail.dart';
import 'package:mjk_apps/ui/views/orderjual/orderjual.dart';
import 'package:mjk_apps/ui/views/orderjual/produkkatalog.dart';
import 'package:mjk_apps/ui/views/pengiriman/daftarpengiriman.dart';
import 'package:mjk_apps/ui/views/pengiriman/trackingpengiriman.dart';
import 'package:mjk_apps/ui/views/sales_order/approval_order_penjualan_view.dart';
import 'package:mjk_apps/ui/views/splash_screen_view.dart';
import 'package:mjk_apps/ui/views/videotuorial/videotutorial.dart';
import 'package:mjk_apps/ui/views/videotuorial/videotutorialdetail.dart';

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

    bool argsIsInvalid = false;

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
        final NavbarSalesViewParam param = settings.arguments is NavbarSalesViewParam
            ? settings.arguments as NavbarSalesViewParam
            : NavbarSalesViewParam();
        return buildRoute(
          builder: (_) => NavbarSalesView(
            param: param,
          ),
        );
      case Routes.dashboard:
        return buildRoute(
          builder: (_) => const DashboardView(),
        );
      case Routes.approvalOrderJual:
        return buildRoute(
          builder: (_) => const ApprovalOrderPenjualanView(),
        );

      case Routes.activitysales:
        return buildRoute(
          builder: (_) => const ActivitySalesView(),
        );

      case Routes.piutang:
        return buildRoute(
          builder: (_) => const PiutangView(),
        );

      case Routes.omset:
        return buildRoute(
          builder: (_) => const OmsetView(),
        );

      case Routes.salesactivity:
        return buildRoute(
          builder: (_) => const SalesActivityView(),
        );

      case Routes.addsalesactivity:
        return buildRoute(
          builder: (_) => const AddSalesActivity(),
        );

      case Routes.editsalesactivity:
        return buildRoute(
          builder: (_) => const EditSalesActivity(),
        );

      case Routes.customer:
        return buildRoute(
          builder: (_) => const CustomerView(),
        );

      case Routes.addcustomer:
        return buildRoute(
          builder: (_) => const AddCustomer(),
        );

      case Routes.detailcustomer:
        DetailCustomerParam param = const DetailCustomerParam(mode: 'view', nomor: 0);
        if (settings.arguments is DetailCustomerParam) {
          param = settings.arguments as DetailCustomerParam;
        } else {
          argsIsInvalid = true;
          // continue invalidArgs;
        }

        return buildRoute(
          builder: (_) => DetailCustomer(
            param: param,
          ),
        );

      case Routes.orderjual:
        return buildRoute(
          builder: (_) => const OrderJualView(),
        );

      case Routes.addorderjual:
        return buildRoute(
          builder: (_) => const AddOrderJual(),
        );

      case Routes.detailorderpenjualan:
        return buildRoute(
          builder: (_) => const DetailOrderPenjualan(),
        );

      case Routes.daftarorderjual:
        return buildRoute(
          builder: (_) => const DaftarOrderJualView(),
        );

      case Routes.daftarpengiriman:
        return buildRoute(
          builder: (_) => const DaftarPengirimanView(),
        );

      case Routes.katalogproduk:
        return buildRoute(
          builder: (_) => const ProdukKatalogView(),
        );

      case Routes.trackingpengiriman:
        return buildRoute(
          builder: (_) => const TrackingPengiriman(),
        );

      case Routes.approval:
        return buildRoute(
          builder: (_) => const ApprovalView(),
        );

      case Routes.detailorder:
        return buildRoute(
          builder: (_) => const DetailOrder(),
        );

      case Routes.notifikasi:
        return buildRoute(
          builder: (_) => const NotifikasiView(),
        );

      case Routes.akun:
        return buildRoute(
          builder: (_) => const AkunView(),
        );

      case Routes.ubahpassword:
        return buildRoute(
          builder: (_) => const UbahPasswordView(),
        );

      case Routes.videotutorial:
        return buildRoute(
          builder: (_) => const VideoTutorialView(),
        );

      case Routes.videotutorialdetail:
        return buildRoute(
          builder: (_) => const VideoTutorialDetailView(),
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
          builder: (_) => const DetailOrderJual(),
        );

      case Routes.AddDetailCatalog:
        return buildRoute(
          builder: (_) => const AddDetailOrderJual(),
        );

      default:
        return null;
    }
  }
}
