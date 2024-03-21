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

  List<GetDataContent> _sales = [];
  List<GetDataContent> get sales => _sales;
  GetDataContent? _selectedSales;
  GetDataContent? get selectedSales => _selectedSales;

  final List<GetDataContent> _desa = [];
  List<GetDataContent> get desa => _desa;
  GetDataContent? _selectedDesa;
  GetDataContent? get selectedDesa => _selectedDesa;

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchDaftarCustomer();
    await _fetchKategoriCustomer();
    await _fetchTipeOutlet();
    await _fetchGelar();
    await _fetchSales();
    await _fetchDesa();
    setBusy(false);
  }

  Future<void> _fetchDaftarCustomer() async {
    final filters = GetFilter(
      limit: 10,
      sort: "ASC",
      orderby: 'mhcustomer.nomor',
    );

    final response = await _getDataDTOApi.getData(
      action: "getCustomer",
      filters: filters,
    );

    if (response.isRight) {
      _daftarcustomer = response.right.data.data;
      notify();
    }
  }

  GetFilter currentFilter = GetFilter(
    limit: 10, // Atur batas awal
    sort: 'ASC',
    orderby: 'mhcustomer.nomor',
  );
  Future<void> loadMoreData() async {
    try {
      final newFilter = GetFilter(
        limit: currentFilter.limit + 10,
        sort: currentFilter.sort,
        orderby: currentFilter.orderby,
      );

      final response = await _getDataDTOApi.getData(
        action: "getCustomer",
        filters: newFilter,
      );

      if (response.isRight) {
        // Update data dengan data baru yang dimuat
        _daftarcustomer.addAll(response.right.data.data);
        notify(); // Panggil notify untuk memperbarui tampilan
      }
    } catch (e) {
      // Handle error jika diperlukan
      print("Error: $e");
    }
  }

  Future<void> _fetchKategoriCustomer() async {
    final filters = GetFilter(
      limit: 10,
    );

    final response = await _getDataDTOApi.getData(
      action: "getKategoriCustomer",
      filters: filters,
    );

    if (response.isRight) {
      _kategoricustomer = response.right.data.data;
      notify();
    }
  }

  Future<void> _fetchTipeOutlet() async {
    final filters = GetFilter(
      limit: 10,
    );

    final response = await _getDataDTOApi.getData(
      action: "getTipeOutlet",
      filters: filters,
    );

    if (response.isRight) {
      _tipeoutlet = response.right.data.data;
      notify();
    }
  }

  Future<void> _fetchGelar() async {
    final filters = GetFilter(
      limit: 10,
    );
    final response = await _getDataDTOApi.getData(
      action: "getGelar",
      filters: filters,
    );

    if (response.isRight) {
      _gelar = response.right.data.data;
      notify();
    }
  }

  Future<void> _fetchSales() async {
    final filters = GetFilter(
      limit: 10,
    );
    final response = await _getDataDTOApi.getData(
      action: "getSales",
      filters: filters,
    );

    if (response.isRight) {
      _sales = response.right.data.data;
      notify();
    }
  }

  Future<void> _fetchDesa() async {
    final filters = GetFilter(
      limit: 10,
    );
    final response = await _getDataDTOApi.getData(
      action: "getDesa",
      filters: filters,
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

  void setselectedsales(GetDataContent? sales) {
    _selectedSales = sales;
    notify();
  }

  void setselecteddesa(GetDataContent? desa) {
    _selectedDesa = desa;
    notify();
  }
}
