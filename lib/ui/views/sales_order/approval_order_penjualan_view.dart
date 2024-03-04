import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/core/networks/penjualan_network.dart';
import 'package:mjk_apps/core/utilities/text_styles.dart';
import 'package:mjk_apps/core/view_models/approval_order_jual/approval_order_penjualan_view_model.dart';
import 'package:mjk_apps/core/view_models/view_model.dart';
import 'package:mjk_apps/ui/shared/loading_overlay.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/shared/unfocus_helper.dart';
import 'package:mjk_apps/ui/views/sales_order/order_jual_selected_card.dart';
import 'package:mjk_apps/ui/widgets/app_bars.dart';
import 'package:mjk_apps/ui/widgets/buttons.dart';

class ApprovalOrderPenjualanView extends ConsumerStatefulWidget {
  const ApprovalOrderPenjualanView({super.key});

  @override
  ConsumerState<ApprovalOrderPenjualanView> createState() =>
      _ApprovalOrderPenjualanViewState();
}

class _ApprovalOrderPenjualanViewState
    extends ConsumerState<ApprovalOrderPenjualanView> {
  @override
  Widget build(BuildContext context) {
    return ViewModel<ApprovalOrderPenjualanViewModel>(
      model: ApprovalOrderPenjualanViewModel(
        penjualanApi: ref.read(penjualanApi),
      ),
      onModelReady: (ApprovalOrderPenjualanViewModel model) =>
          model.initModel(),
      builder: (_, ApprovalOrderPenjualanViewModel model, __) {
        return LoadingOverlay(
          isLoading: model.busy,
          child: UnfocusHelper(
            child: Scaffold(
              appBar: buildAppBar(
                context,
                onBackButtonPressed: () => Navigator.maybePop(context),
                title: 'Daftar Order Jual',
              ),
              body: Column(
                children: [
                  Spacings.verSpace(16),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 16.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       GestureDetector(
                  //         onTap: () {
                  //           model.setAllOrderJuals(true);
                  //         },
                  //         child: Text(
                  //           'Pilih Semua',
                  //           style: buildTextStyle(
                  //               fontSize: 16,
                  //               fontHeight: 20,
                  //               fontWeight: 500,
                  //               color: Colors.blue),
                  //           textAlign: TextAlign.end,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Expanded(
                      child: model.orderJuals.isNotEmpty
                          ? ListView.separated(
                              separatorBuilder: (_, __) =>
                                  Spacings.verSpace(12),
                              itemCount: model.orderJuals.length,
                              itemBuilder: ((context, index) {
                                // return _buildApprovalCard(
                                //   barang:
                                //       model.orderJuals[index].orderJual.barang,
                                //   customer: model
                                //       .orderJuals[index].orderJual.customer,
                                //   sales:
                                //       model.orderJuals[index].orderJual.sales,
                                // );
                                return OrderJualSelectedCard(
                                  selectedOrderJuals: model.orderJuals[index],
                                  setSelected: model.setSelected,
                                );
                              }),
                            )
                          : Center(
                              child: Text(
                                'Data is not available',
                                style: buildTextStyle(
                                  fontSize: 18,
                                  fontWeight: 500,
                                ),
                              ),
                            )),
                  Padding(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    child: Button(
                        buttonType: ButtonType.primary,
                        buttonSize: ButtonSize.medium,
                        text: 'Simpan',
                        onTap: () async {
                          bool response = await model.approveOrderJual();

                          if (response && mounted) {
                            showSuccessToast('Approve Berhasil');
                            Navigator.pushNamedAndRemoveUntil(
                                context, Routes.dashboard, (route) => false);
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showSuccessToast(String text) {
    BotToast.showSimpleNotification(
      title: text,
      backgroundColor: const Color(0xffB8EABD),
      hideCloseButton: true,
      titleStyle: buildTextStyle(
        fontSize: 14,
        fontWeight: 400,
        color: const Color(0xff343434),
      ),
    );
  }
}
