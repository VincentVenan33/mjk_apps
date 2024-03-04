import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';

import '../../../widgets/search_bar.dart' as search;

class CustomerView extends ConsumerStatefulWidget {
  const CustomerView({super.key});

  @override
  ConsumerState<CustomerView> createState() => _CustomerViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _CustomerViewState extends ConsumerState<CustomerView> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchTextChanged(String query) {
    print("Teks pencarian: $query");
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          print('object');
          return;
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 44,
                      left: 17,
                      right: 16,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.black,
                          iconSize: 20,
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              Routes.navBarSales,
                              (route) => false,
                              arguments: NavbarSalesViewParam(
                                menuIndex: 1,
                                // 1 = Aktifitas Sales
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Data Pelanggan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_alt_outlined,
                          ),
                          color: Colors.black,
                          iconSize: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacings.verSpace(26),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 58,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MjkColor.lightBlack020,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(true, "Aktif"),
                        const SizedBox(width: 16),
                        _buildButton(false, "Tidak Aktif"),
                      ],
                    ),
                  ),
                  Spacings.verSpace(20),
                  search.SearchBar(
                    controller: _searchController,
                    hintText: 'Cari Barang',
                    onChanged: _onSearchTextChanged,
                  ),
                  Spacings.verSpace(20),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 108,
                              height: 25,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: MjkColor.lightBlue006,
                              ),
                              child: const Text(
                                'C-BRI-00009',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: MjkColor.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        const Row(
                          children: [
                            Text(
                              'BAPAK DJAN FARIDZ',
                              style: TextStyle(
                                fontSize: 13,
                                color: MjkColor.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jl. Talang-Men..\nJakarta Barat',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: MjkColor.lightBlack018,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cabang\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'BUMIRAYA INT...',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'No. Telepon\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '0812345789',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(12),
                        const Divider(
                          height: 1,
                          color: MjkColor.lightBlack009,
                        ),
                        Spacings.verSpace(12),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 108,
                              height: 25,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: MjkColor.lightBlue006,
                              ),
                              child: const Text(
                                'C-BRI-00009',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: MjkColor.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        const Row(
                          children: [
                            Text(
                              'BAPAK DJAN FARIDZ',
                              style: TextStyle(
                                fontSize: 13,
                                color: MjkColor.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jl. Talang-Men..\nJakarta Barat',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: MjkColor.lightBlack018,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cabang\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'BUMIRAYA INT...',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'No. Telepon\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '0812345789',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(12),
                        const Divider(
                          height: 1,
                          color: MjkColor.lightBlack009,
                        ),
                        Spacings.verSpace(12),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 108,
                              height: 25,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: MjkColor.lightBlue006,
                              ),
                              child: const Text(
                                'C-BRI-00009',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: MjkColor.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        const Row(
                          children: [
                            Text(
                              'BAPAK DJAN FARIDZ',
                              style: TextStyle(
                                fontSize: 13,
                                color: MjkColor.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jl. Talang-Men..\nJakarta Barat',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: MjkColor.lightBlack018,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cabang\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'BUMIRAYA INT...',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'No. Telepon\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '0812345789',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(12),
                        const Divider(
                          height: 1,
                          color: MjkColor.lightBlack009,
                        ),
                        Spacings.verSpace(12),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 108,
                              height: 25,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: MjkColor.lightBlue006,
                              ),
                              child: const Text(
                                'C-BRI-00009',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: MjkColor.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        const Row(
                          children: [
                            Text(
                              'BAPAK DJAN FARIDZ',
                              style: TextStyle(
                                fontSize: 13,
                                color: MjkColor.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jl. Talang-Men..\nJakarta Barat',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: MjkColor.lightBlack018,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cabang\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'BUMIRAYA INT...',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'No. Telepon\n',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '0812345789',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: MjkColor.lightBlack018,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(12),
                        const Divider(
                          height: 1,
                          color: MjkColor.lightBlack009,
                        ),
                        Spacings.verSpace(12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MjkColor.floatButtonSalesColor,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(
                        12.25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Routes.addcustomer,
                      );
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 31.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(bool isActive, String text) {
    return SizedBox(
      width: 143.4,
      height: 37.64,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: isActive ? MjkColor.white : MjkColor.lightBlack010,
          backgroundColor: isActive ? MjkColor.lightBlue005 : MjkColor.white,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
