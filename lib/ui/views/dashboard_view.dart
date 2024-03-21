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

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return ViewModel<DashboardViewModel>(
      model: DashboardViewModel(
        authenticationService: ref.read(authProvider),
        // getDataDTOApi: ref.read(getDataDTOApi),
      ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ORDER JUAL TERAKHIR',
                      style: buildTextStyle(
                        fontSize: 12,
                        fontWeight: 500,
                        color: MjkColor.lightBlack008,
                      ),
                    ),
                  ],
                ),
                Spacings.verSpace(12),
                const Divider(
                  height: 1,
                  color: MjkColor.lightBlack009,
                ),
                Spacings.verSpace(21),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (_, __) => Spacings.verSpace(12),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.914), // Add border radius here
                                      color: const Color.fromRGBO(36, 149, 174, 0.80),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 9,
                                      right: 9.92,
                                      bottom: 4.46,
                                    ),
                                    child: const Text(
                                      'OJ/2024/00001',
                                      style: TextStyle(
                                        color: MjkColor.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Spacings.verSpace(10.43),
                                  Text(
                                    'Rp.500.000',
                                    style: buildTextStyle(
                                      fontSize: 13.011,
                                      fontWeight: 400,
                                      color: MjkColor.lightBlack010,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Naryo Hartanto',
                                    style: buildTextStyle(
                                      fontSize: 15.376,
                                      fontWeight: 700,
                                      color: MjkColor.lightBlack011,
                                    ),
                                  ),
                                  Spacings.verSpace(10.43),
                                  Text(
                                    '01 Januari 2024',
                                    style: buildTextStyle(
                                      fontSize: 15.376,
                                      fontWeight: 500,
                                      color: MjkColor.lightBlack011,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacings.verSpace(9),
                          const Column(
                            children: [
                              Divider(
                                height: 1,
                                color: MjkColor.lightBlack009,
                              ),
                            ],
                          ),
                          Spacings.verSpace(20.82),
                        ],
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
          height: 70,
          width: 165.075,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MjkColor.blue006,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(0),
              backgroundColor: Color(Colors.transparent.value),
              surfaceTintColor: Colors.white,
              shadowColor: const Color(0x00000000),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            onPressed: () {
              if (isPermintaan) {
                Navigator.pushNamed(
                  context,
                  Routes.omset,
                );
              } else {
                Navigator.pushNamed(
                  context,
                  Routes.piutang,
                );
              }
            },
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                backgroundColor: Color(Colors.transparent.value),
                surfaceTintColor: Colors.white,
                shadowColor: const Color(0x00000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              onPressed: () {
                if (isPermintaan) {
                  Navigator.pushNamed(
                    context,
                    Routes.omset,
                  );
                } else {
                  Navigator.pushNamed(
                    context,
                    Routes.piutang,
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 0,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              isPermintaan ? 'Omset' : 'Piutang',
                              style: buildTextStyle(
                                fontSize: 15,
                                fontWeight: 800,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          isPermintaan ? 'Rp. 5.000.000.000' : 'Rp. 5.000.000.000',
                          style: buildTextStyle(
                            fontSize: 15,
                            fontWeight: 500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
