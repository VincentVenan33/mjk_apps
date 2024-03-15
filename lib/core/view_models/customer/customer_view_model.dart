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

  List<GetDataContent> _kategoricustomer = [];
  List<GetDataContent> get kategoricustomer => _kategoricustomer;
  GetDataContent? _selectedKategoriCustomer;
  GetDataContent? get selectedKategoriCustomer => _selectedKategoriCustomer;

  List<GetDataContent> _tipeoutlet = [];
  List<GetDataContent> get tipeoutlet => _tipeoutlet;
  GetDataContent? _selectedTipeOutlet;
  GetDataContent? get selectedTipeOutlet => _selectedTipeOutlet;

  List<GetDataContent> _gelar = [];
  List<GetDataContent> get gelar => _gelar;
  GetDataContent? _selectedGelar;
  GetDataContent? get selectedGelar => _selectedGelar;

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchDaftarCustomer();
    await _fetchKategoriCustomer();
    await _fetchTipeOutlet();
    await _fetchGelar();
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

  Future<void> _fetchGelar() async {
    final response = await _getDataDTOApi.getData(
      action: "getGelar",
    );

    if (response.isRight) {
      _gelar = response.right.data.data;
      notify();
    }
  }

  void setselectedkategori(GetDataContent? kategori) {
    _selectedKategoriCustomer = kategori;
    notify();
  }

  void setselectedtipeoutlet(GetDataContent? tipeoutlet) {
    _selectedTipeOutlet = tipeoutlet;
    notify();
  }

  void setselectedgelar(GetDataContent? gelar) {
    _selectedGelar = gelar;
    notify();
  }
}
