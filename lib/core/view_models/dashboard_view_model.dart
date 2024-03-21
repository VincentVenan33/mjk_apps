import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/networks/get_data_dto_network.dart';
import 'package:mjk_apps/core/services/authentication_service.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';

class DashboardViewModel extends BaseViewModel {
  DashboardViewModel({
    required AuthenticationService authenticationService,
    // required GetDataDTOService getDataDTOApi,
  }) : _authenticationService = authenticationService;
  // _getDataDTOApi = getDataDTOApi;

  final AuthenticationService _authenticationService;
  // final GetDataDTOService _getDataDTOApi;

  // List<GetDataContent> _omzet = [];
  // List<GetDataContent> get omzet => _omzet;

  // // TODO: Add a method to handle login from shared preference
  // bool _isLoggedIn = false;
  // bool get isLoggedIn => _isLoggedIn;

  @override
  Future<void> initModel() async {
    setBusy(true);
    //await getLoggedInStatus();
    // await _fetchOmzet();
    setBusy(false);
  }

  // Future<void> _fetchOmzet() async {
  //   final filters = GetFilter(
  //     limit: 10,
  //   );

  //   final response = await _getDataDTOApi.getData(
  //     action: "getOmzet",
  //     filters: filters,
  //   );

  //   if (response.isRight) {
  //     _omzet = response.right.data.data;
  //     notify();
  //   }
  // }

  Future<bool> requestLogout() async {
    final response = await _authenticationService.logout();

    return true;
  }
}
