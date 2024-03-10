import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/networks/get_data_dto_network.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';

class CustomerViewModel extends BaseViewModel {
  CustomerViewModel({
    required GetDataDTOService getDataDTOApi,
  }) : _getDataDTOApi = getDataDTOApi;

  final GetDataDTOService _getDataDTOApi;

  List<GetDataContent> _daftarcustomer = [];
  List<GetDataContent> get daftarcustomer => _daftarcustomer;

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchDaftarCustomer();
    setBusy(false);
  }

  Future<void> _fetchDaftarCustomer() async {
    final response = await _getDataDTOApi.getData(
      action: "getCustomer",
    );

    if (response.isRight) {
      _daftarcustomer = response.right.data.data;
      notify();
    }
  }
}
