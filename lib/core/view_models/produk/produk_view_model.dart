import 'package:mjk_apps/core/app_constants/filters.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';

import '../../models/produk/produk.dart';
import '../../networks/produk_network.dart';

class ProdukViewModel extends BaseViewModel {
  ProdukViewModel({
    required ProdukApiService produkApi,
  }) : _produkApi = produkApi;

  final ProdukApiService _produkApi;

  // List<OrderJual> _orderJuals = [];
  // List<OrderJual> get orderJuals => _orderJuals;

  List<Produk> _produk = [];
  List<Produk> get produk => _produk;

  // final List<Produk> _produkForApprove = [];

  final PeriodFilter _currentFilter = PeriodFilter.month;
  String get _startDate {
    return _currentFilter.startDate;
  }

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchProduk();
    setBusy(false);
  }

  Future<void> _fetchProduk() async {
    final response = await _produkApi.getProduk(
      tanggal: _startDate,
      // tanggal: '2023-07-21',
    );

    if (response.isRight) {
      _produk = response.right.data;
      notify();
    }
  }

  // void setSelected(ProdukSelected produkSelected, bool value) {
  //   final int produkIndex = _produk.indexWhere(
  //     (e) => e.produk.nomorproduk == produkSelected.produk.nomorproduk,
  //   );
  //   if (produkIndex > -1) {
  //     _produk[produkIndex].isSelected = value;
  //   }

  // final int indexOfRealOrderJuals = _orderJuals.indexWhere(
  //     (OrderJualSelected e) =>
  //         e.orderJual.nomorThOrderJual ==
  //         _orderJuals[orderJualIndex].orderJual.nomorThOrderJual,
  //   );
  //   if (indexOfRealOrderJuals > -1) {
  //     _orderJuals[indexO    fRealOrderJuals].isSelected = value;
  //   }
  // }
  //   notifyListeners();
  // }

  // void setAllProduk(bool isSelected) {
  //   _produk
  //       .map(
  //         (e) => ProdukSelected(
  //           produk: e.produk,
  //           isSelected: isSelected,
  //         ),
  //       )
  //       .toList();
  //   notifyListeners();
  // }

  // Future<bool> approveProduk() async {
  //   List<ProdukSelected> selectedProduk =
  //       _produk.where((element) => element.isSelected == true).toList();

  //   for (var i = 0; i < selectedProduk.length; i++) {
  //     // print(selectedOrderJuals[i].orderJual.nomorThOrderJual);

  //     final response = await _produkApi.approveProduk(
  //       nomorproduk: selectedProduk[i].produk.nomorProduk,
  //     );

  //     if (response.isRight) {
  //       await _fetchProduk();
  //       return true;
  //     }
  //   }

  //   return false;
  // }
}

// class ProdukSelected {
//   ProdukSelected({
//     required this.produk,
//     required this.isSelected,
//   });
//   final Produk produk;
//   bool isSelected;
// }
