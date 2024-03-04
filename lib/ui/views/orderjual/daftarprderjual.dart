import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';
import 'package:mjk_apps/ui/views/orderjual/itemdetail.dart';

import '../../shared/spacings.dart';
import '../../widgets/search_bar.dart' as search;

class DaftarOrderJualView extends ConsumerStatefulWidget {
  const DaftarOrderJualView({Key? key}) : super(key: key);

  @override
  ConsumerState<DaftarOrderJualView> createState() => _DaftarOrderJualViewState();
}

class _DaftarOrderJualViewState extends ConsumerState<DaftarOrderJualView> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchTextChanged(String query) {
    print("Teks pencarian: $query");
  }

  void _navigateToDetailPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const DetailOrderJual(),
    ));
    // FilterBottom.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 44,
                    bottom: 12,
                  ),
                  child: Row(
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
                              menuIndex: 2,
                              // 1 = Aktifitas Sales
                            ),
                          );
                        },
                      ),
                      Spacings.horSpace(95),
                      const Text(
                        'Produk Katalog',
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
            child: search.SearchBar(
              controller: _searchController,
              hintText: 'Cari Barang',
              onChanged: _onSearchTextChanged,
            ),
          ),
          Expanded(
            child: GridView.builder(
              // itemCount: model.produk.length,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 14.0,
                crossAxisSpacing: 14.0,
                mainAxisExtent: 240,
              ),
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: _navigateToDetailPage,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                child: Image.network(
                                  'https://indraco.com/gmb/tanpalogo/TUGUBUAYA/TB-301.png',
                                  height: 132,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          12,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'F-001-24',
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
                                  ),
                                  Text(
                                    // '${model.produk[index].nama.substring(0, 8)}...',
                                    'KOPI TUGU BUAYA',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Minuman',
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
                                  ),
                                  Text(
                                    // '${model.produk[index].groupbarang.substring(0, 8)}...',
                                    'Kopi',
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
                                  ),
                                  Text(
                                    'Tunai',
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
                                  ),
                                  Text(
                                    'Pcs',
                                    style: TextStyle(
                                      fontSize: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
