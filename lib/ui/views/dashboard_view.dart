import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/core/services/authentication_service.dart';
import 'package:mjk_apps/core/utilities/text_styles.dart';
import 'package:mjk_apps/core/view_models/dashboard_view_model.dart';
import 'package:mjk_apps/core/view_models/view_model.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/views/sales_graph.dart';
import 'package:mjk_apps/ui/widgets/app_bars.dart';
import 'package:mjk_apps/ui/widgets/buttons.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return ViewModel<DashboardViewModel>(
      model: DashboardViewModel(authenticationService: ref.read(authProvider)),
      onModelReady: (DashboardViewModel model) => model.initModel(),
      builder: (_, DashboardViewModel model, __) {
        return Scaffold(
          appBar: buildBasicAppBar(
            context,
            anyNotif: true,
            onLogoutButtonPressed: () => model.requestLogout(),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                const SalesGraph(),
                Spacings.verSpace(20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCardSummary(context, true, '0'),
                      Spacings.horSpace(20),
                      _buildCardSummary(context, false, '0'),
                    ],
                  ),
                ),
                Spacings.verSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Orders',
                      style: buildTextStyle(
                        fontSize: 18,
                        fontWeight: 600,
                        color: MjkColor.black001,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: buildTextStyle(
                        fontSize: 14,
                        fontWeight: 400,
                        color: MjkColor.lightBlack001,
                      ),
                    ),
                  ],
                ),
                Spacings.verSpace(10),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (_, __) => Spacings.verSpace(12),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/mjk-logo.png',
                              height: 72,
                              width: 72,
                            ),
                            Spacings.horSpace(8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Barang A',
                                    style: buildTextStyle(
                                      fontSize: 16,
                                      fontWeight: 400,
                                      color: MjkColor.black,
                                    ),
                                  ),
                                  Text(
                                    '12 pcs',
                                    style: buildTextStyle(
                                      fontSize: 14,
                                      fontWeight: 400,
                                      color: MjkColor.lightBlack001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Rp. 120.000',
                              style: buildTextStyle(
                                fontSize: 14,
                                fontWeight: 400,
                                color: MjkColor.black001,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // Button(
                //   buttonType: ButtonType.primary,
                //   buttonSize: ButtonSize.medium,
                //   text: 'Approval Order Penjualan',
                //   onTap: () => Navigator.pushNamed(
                //     context,
                //     Routes.approvalOrderJual,
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardSummary(BuildContext context, isPermintaan, String quantity) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: 95,
          width: 187,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xFF990000), MjkColor.redPrimary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isPermintaan ? 'Total Omset' : 'Item Terjual',
                  style: buildTextStyle(
                    fontSize: 14,
                    fontWeight: 400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  isPermintaan ? 'Rp. 128.000.000' : '14 Items',
                  style: buildTextStyle(
                    fontSize: 18,
                    fontWeight: 600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
