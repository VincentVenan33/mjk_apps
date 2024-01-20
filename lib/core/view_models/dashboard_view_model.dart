import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/core/networks/authentication_network.dart';
import 'package:mjk_apps/core/services/authentication_service.dart';
import 'package:mjk_apps/core/services/navigation_service.dart';
import 'package:mjk_apps/core/services/shared_preferences_service.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';
import 'package:mjk_apps/core/models/authentication/login.dart';

class DashboardViewModel extends BaseViewModel {
  DashboardViewModel({
    required AuthenticationService authenticationService,
  }) : _authenticationService = authenticationService;

  final AuthenticationService _authenticationService;

  // // TODO: Add a method to handle login from shared preference
  // bool _isLoggedIn = false;
  // bool get isLoggedIn => _isLoggedIn;

  @override
  Future<void> initModel() async {
    setBusy(true);
    //await getLoggedInStatus();
    setBusy(false);
  }

  Future<bool> requestLogout() async {
    final response = await _authenticationService.logout();

    return true;
  }
}
