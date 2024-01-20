// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/core/services/authentication_service.dart';
import 'package:mjk_apps/core/services/navigation_service.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';
import 'package:mjk_apps/ui/views/authentication/login_view.dart';

class SplashScreenViewModel extends BaseViewModel {
  SplashScreenViewModel({
    required NavigationService navigationService,
    required AuthenticationService authenticationService,
  })  : _navigationService = navigationService,
        _authenticationService = authenticationService;

  final NavigationService _navigationService;
  final AuthenticationService _authenticationService;

  String? _tokenFCM;
  String? get tokenFCM => _tokenFCM;

  @override
  Future<void> initModel() async {
    _navigateToMainMenu();
    // _tokenFCM = await FirebaseMessaging.instance.getToken();
  }

  void _navigateToMainMenu() {
    Future<void>.delayed(
      const Duration(
        seconds: 5,
      ),
      () async {
        final bool isLoggedIn = await _authenticationService.isLoggedIn();

        if (isLoggedIn) {
          _navigationService.popAllAndNavigateTo(
            Routes.dashboard,
          );
          return;
        }
        _navigationService.popAllAndNavigateTo(
          Routes.login,
          arguments: LoginViewParam(
            tokenFCM: tokenFCM,
          ),
        );
      },
    );
  }
}