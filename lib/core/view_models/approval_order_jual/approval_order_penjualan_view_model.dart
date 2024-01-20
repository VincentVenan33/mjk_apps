import 'package:mjk_apps/core/app_constants/filters.dart';
import 'package:mjk_apps/core/models/penjualan/approval_order_penjualan.dart';
import 'package:mjk_apps/core/networks/penjualan_network.dart';
import 'package:mjk_apps/core/view_models/base_view_model.dart';

class ApprovalOrderPenjualanViewModel extends BaseViewModel {
  ApprovalOrderPenjualanViewModel({
    required PenjualanApiService penjualanApi,
  }) : _penjualanApi = penjualanApi;

  final PenjualanApiService _penjualanApi;

  // List<OrderJual> _orderJuals = [];
  // List<OrderJual> get orderJuals => _orderJuals;

  List<OrderJualSelected> _orderJuals = [];
  List<OrderJualSelected> get orderJuals => _orderJuals;

  List<OrderJualSelected> _orderJualsForApprove = [];

  PeriodFilter _currentFilter = PeriodFilter.month;
  String get _startDate {
    return _currentFilter.startDate;
  }

  @override
  Future<void> initModel() async {
    setBusy(true);
    await _fetchOrderJuals();
    setBusy(false);
  }

  Future<void> _fetchOrderJuals() async {
    final response = await _penjualanApi.getOrderJuals(
      tanggal: _startDate,
      // tanggal: '2023-07-21',
    );

    if (response.isRight) {
      _orderJuals = response.right.data
          .map(
            (e) => OrderJualSelected(
              orderJual: e,
              isSelected: false,
            ),
          )
          .toList();
    }
  }

  void setSelected(OrderJualSelected orderJualSelected, bool value) {
    final int orderJualIndex = _orderJuals.indexWhere(
      (e) => e.orderJual.nomorThOrderJual == orderJualSelected.orderJual.nomorThOrderJual,
    );
    if (orderJualIndex > -1) {
      _orderJuals[orderJualIndex].isSelected = value;
    }

    // final int indexOfRealOrderJuals = _orderJuals.indexWhere(
    //     (OrderJualSelected e) =>
    //         e.orderJual.nomorThOrderJual ==
    //         _orderJuals[orderJualIndex].orderJual.nomorThOrderJual,
    //   );
    //   if (indexOfRealOrderJuals > -1) {
    //     _orderJuals[indexO    fRealOrderJuals].isSelected = value;
    //   }
    // }
    notifyListeners();
  }

  void setAllOrderJuals(bool isSelected) {
    _orderJuals
        .map(
          (e) => OrderJualSelected(
            orderJual: e.orderJual,
            isSelected: isSelected,
          ),
        )
        .toList();
    notifyListeners();
  }

  Future<bool> approveOrderJual() async {
    List<OrderJualSelected> selectedOrderJuals = _orderJuals.where((element) => element.isSelected == true).toList();

    for (var i = 0; i < selectedOrderJuals.length; i++) {
      // print(selectedOrderJuals[i].orderJual.nomorThOrderJual);

      final response = await _penjualanApi.approveOrderJual(
        nomorThOrderJual: selectedOrderJuals[i].orderJual.nomorThOrderJual,
      );

      if (response.isRight) {
        await _fetchOrderJuals();
        return true;
      }
    }

    return false;
  }
}

class OrderJualSelected {
  OrderJualSelected({
    required this.orderJual,
    required this.isSelected,
  });
  final OrderJual orderJual;
  bool isSelected;
}
