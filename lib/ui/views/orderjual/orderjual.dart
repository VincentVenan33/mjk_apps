import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';

import '../../shared/spacings.dart';
import '../../widgets/search_bar.dart' as search;

class OrderJualView extends ConsumerStatefulWidget {
  const OrderJualView({Key? key}) : super(key: key);

  @override
  ConsumerState<OrderJualView> createState() => _OrderJualViewState();
}

class _OrderJualViewState extends ConsumerState<OrderJualView> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchTextChanged(String query) {
    print("Teks pencarian: $query");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 44,
                    left: 17,
                    right: 16,
                    bottom: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Daftar Order Jual',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
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
                search.SearchBar(
                  controller: _searchController,
                  hintText: 'Cari',
                  onChanged: _onSearchTextChanged,
                ),
                Spacings.verSpace(
                  24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(MjkColor.floatButtonSalesColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Routes.daftarorderjual,
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Katalog Produk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacings.horSpace(15),
                        const Icon(
                          Icons.book_outlined,
                          color: MjkColor.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacings.verSpace(
                  24,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Color(Colors.transparent.value),
                        surfaceTintColor: Colors.white,
                        shadowColor: const Color(0x00000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 108,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Sales\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Ajeng Wigati',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(50),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Tanggal\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '11/01/2024',
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 51.5,
                                        color: MjkColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(12),
                  ],
                ),
                Spacings.verSpace(14),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Color(Colors.transparent.value),
                        surfaceTintColor: Colors.white,
                        shadowColor: const Color(0x00000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 108,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Sales\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Ajeng Wigati',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(50),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Tanggal\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '11/01/2024',
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 51.5,
                                        color: MjkColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(12),
                  ],
                ),
                Spacings.verSpace(14),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Color(Colors.transparent.value),
                        surfaceTintColor: Colors.white,
                        shadowColor: const Color(0x00000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 108,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Sales\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Ajeng Wigati',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(50),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Tanggal\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '11/01/2024',
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 51.5,
                                        color: MjkColor.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(12),
                  ],
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
                      Routes.addorderjual,
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
    );
  }
}
