import 'package:flutter/widgets.dart';
import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/models/set_data/create_customer_dto.dart';
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

    Future<bool> addCustomertModel() async {
      final response = await _setCustomerDTOApi.setCustomer(
        action: "addCustomer",
        nomormhdesa: int.parse(nomormhdesaController.text),
        nomormhkelurahan: int.parse(nomormhkelurahanController.text),
        nomormhkecamatan: int.parse(nomormhkecamatanController.text),
        nomormhkota: int.parse(nomormhkotaController.text),
        nomormhprovinsi: int.parse(nomormhprovinsiController.text),
        nomormhgelar: int.parse(nomormhgelarController.text),
        nomormhsales: int.parse(nomormhsalesController.text),
        nomormhkategoricustomer: int.parse(nomormhkategoricustomerController.text),
        nomormhtipeoutlet: int.parse(nomormhtipeoutletController.text),
        kode: kodeController.text,
        nama: namaController.text,
        jatuhtempo: jatuhtempoController.text,
        plafon: plafonController.text,
        formatcode: formatcodeController.text,
        alamat: alamatController.text,
        alamatktp: alamatktpController.text,
        shareloc: sharelocController.text,
        notelp: notelpController.text,
        hp: hpController.text,
        ktp: ktpController.text,
        nonpwp: nonpwpController.text,
        kontak: kontakController.text,
        keterangan: keteranganController.text,
        dibuatoleh: dibuatolehController.text,
      );
    }

    if (response.isRight) {
      return true;
    }
    return false;
  }
}
