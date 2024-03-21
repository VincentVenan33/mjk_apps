import 'package:flutter/widgets.dart';
import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/networks/create_customer_dto.dart';
import 'package:mjk_apps/core/networks/get_data_dto_network.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';

class AddCustomerViewModel extends BaseViewModel {
  AddCustomerViewModel({
    required GetDataDTOService getDataDTOApi,
    required SetCustomerDTOService setCustomerDTOApi,
  })  : _getDataDTOApi = getDataDTOApi,
        _setCustomerDTOApi = setCustomerDTOApi;

  final GetDataDTOService _getDataDTOApi;
  final SetCustomerDTOService _setCustomerDTOApi;

  final TextEditingController nomormhdesaController = TextEditingController();
  final TextEditingController nomormhkelurahanController = TextEditingController();
  final TextEditingController nomormhkecamatanController = TextEditingController();
  final TextEditingController nomormhkotaController = TextEditingController();
  final TextEditingController nomormhprovinsiController = TextEditingController();
  final TextEditingController nomormhgelarController = TextEditingController();
  final TextEditingController nomormhsalesController = TextEditingController();
  final TextEditingController nomormhkategoricustomerController = TextEditingController();
  final TextEditingController nomormhtipeoutletController = TextEditingController();
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController nomormnamaControllerhtipeoutletController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController jatuhtempoController = TextEditingController();
  final TextEditingController plafonController = TextEditingController();
  final TextEditingController formatcodeController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController alamatktpController = TextEditingController();
  final TextEditingController sharelocController = TextEditingController();
  final TextEditingController notelpController = TextEditingController();
  final TextEditingController hpController = TextEditingController();
  final TextEditingController ktpController = TextEditingController();
  final TextEditingController nonpwpController = TextEditingController();
  final TextEditingController kontakController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController dibuatolehController = TextEditingController();

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

  List<GetDataContent> _desa = [];
  List<GetDataContent> get desa => _desa;
  GetDataContent? _selectedDesa;
  GetDataContent? get selectedDesa => _selectedDesa;

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchKategoriCustomer();
    await _fetchTipeOutlet();
    await _fetchGelar();
    await _fetchSales();
    await _fetchDesa();
    setBusy(false);
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

  Future<bool> addCustomertModel({
    required int nomormhkelurahan,
    required int nomormhkecamatan,
    required int nomormhkota,
    required int nomormhprovinsi,
    required String kode,
    required String nama,
    required String jatuhtempo,
    required String plafon,
    required String formatcode,
    required String alamat,
    required String alamatktp,
    required String shareloc,
    required String notelp,
    required String hp,
    required String ktp,
    required String nonpwp,
    required String kontak,
    required String keterangan,
    required int dibuatoleh,
  }) async {
    final response = await _setCustomerDTOApi.setCustomer(
      action: "addCustomer",
      nomormhdesa: _selectedDesa?.nomor ?? 0,
      nomormhkelurahan: nomormhkelurahan,
      nomormhkecamatan: nomormhkecamatan,
      nomormhkota: nomormhkota,
      nomormhprovinsi: nomormhprovinsi,
      nomormhgelar: _selectedGelar?.nomor ?? 0,
      nomormhsales: _selectedSales?.nomor ?? 0,
      nomormhkategoricustomer: _selectedKategoriCustomer?.nomor ?? 0,
      nomormhtipeoutlet: _selectedTipeOutlet?.nomor ?? 0,
      kode: kode,
      nama: nama,
      jatuhtempo: jatuhtempo,
      plafon: plafon,
      formatcode: formatcode,
      alamat: alamat,
      alamatktp: alamatktp,
      shareloc: shareloc,
      notelp: notelp,
      hp: hp,
      ktp: ktp,
      nonpwp: nonpwp,
      kontak: kontak,
      keterangan: keterangan,
      dibuatoleh: dibuatoleh,
    );
    if (response.isRight) {
      return true;
    }
    return false;
  }
}
