import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/networks/get_data_dto_network.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';

class AddCustomerViewModel extends BaseViewModel {
  AddCustomerViewModel({
    required GetDataDTOService getDataDTOApi,
  }) : _getDataDTOApi = getDataDTOApi;

  final GetDataDTOService _getDataDTOApi;


  List<GetDataContent> _kategoricustomer = [];
  List<GetDataContent> get kategoricustomer => _kategoricustomer;

  List<GetDataContent> _tipeoutlet = [];
  List<GetDataContent> get tipeoutlet => _tipeoutlet;

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchKategoriCustomer();
    await _fetchTipeOutlet();
    setBusy(false);
  }

  Future<void> _fetchKategoriCustomer() async {
    final response = await _getDataDTOApi.getData(
      action: "getKategoriCustomer",
    );

    if (response.isRight) {
      _kategoricustomer = response.right.data.data;
      notify();
    }
  }

  Future<void> _fetchTipeOutlet() async {
    final response = await _getDataDTOApi.getData(
      action: "getTipeOutlet",
    );

    if (response.isRight) {
      _tipeoutlet = response.right.data.data;
      notify();
    }
  }
}
