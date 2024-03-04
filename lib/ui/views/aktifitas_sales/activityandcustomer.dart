import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/headers_sales.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class ActivitySalesView extends ConsumerStatefulWidget {
  const ActivitySalesView({super.key});

  @override
  ConsumerState<ActivitySalesView> createState() => _ActivitySalesViewState();
}

class _ActivitySalesViewState extends ConsumerState<ActivitySalesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
                child: Column(
                  children: [
                    const HeaderUser(),
                    Spacings.verSpace(24),
                    buildCardSales(context),
                    Spacings.verSpace(25),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  children: [
                    const Text(
                      'AKTIVITAS AND PELANGGAN',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: MjkColor.lightBlack008,
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(10),
                    salesactivity(context),
                    datacustomer(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildCardSales(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: MjkColor
                          .cardColorSales, // Set the background color here
                      borderRadius: BorderRadius.circular(
                          8.0), // Set the border radius here
                    ), // Set the background color here
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
                        Navigator.pushNamed(
                          context,
                          Routes.piutang,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Omset',
                                      style: TextStyle(
                                        color: MjkColor.lightBlack010,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      color: MjkColor.lightBlack010,
                                      iconSize: 16,
                                      onPressed: () {
                                        // Add your notification icon's onPressed functionality here
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Text(
                              'Rp. 5.000.000.000',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: MjkColor.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: MjkColor
                          .cardColorSales, // Set the background color here
                      borderRadius: BorderRadius.circular(
                          8), // Set the border radius here
                    ), // Set the background color here
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
                        Navigator.pushNamed(
                          context,
                          Routes.omset,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  'Piutang',
                                  style: TextStyle(
                                    color: MjkColor.lightBlack010,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios),
                                  color: MjkColor.lightBlack010,
                                  iconSize: 16,
                                  onPressed: () {
                                    // Add your notification icon's onPressed functionality here
                                  },
                                ),
                              ],
                            ),
                            const Text(
                              'Rp. 5.000.000.000',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: MjkColor.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget salesactivity(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: MjkColor.lightBlack012,
                      width: 1,
                    ),
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
                      Navigator.pushNamed(
                        context,
                        Routes.salesactivity,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'AKTIFITAS SALES',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Text(
                                'Total Aktivitas: 8',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.black,
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Text(
                                'Sisa Aktivitas: 8',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.black,
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Text(
                                'Aktivitas Terbaru: Judul Aktivitas',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                color: MjkColor.black,
                                iconSize: 30,
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.salesactivity,
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget datacustomer(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: MjkColor.lightBlack012,
                      width: 1,
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(12),
                      backgroundColor: Color(Colors.transparent.value),
                      surfaceTintColor: Colors.white,
                      shadowColor: const Color(0x00000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Routes.customer,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'DATA PELANGGAN',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Text(
                                'Total Pelanggan: 8',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.black,
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Text(
                                'Pelanggan Baru: 8',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.black,
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Text(
                                'Pelanggan Tidak Aktif: 8',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                color: MjkColor.black,
                                iconSize: 30,
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    Routes.customer,
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
