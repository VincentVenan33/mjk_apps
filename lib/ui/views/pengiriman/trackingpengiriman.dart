import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';

class TrackingPengiriman extends ConsumerStatefulWidget {
  const TrackingPengiriman({super.key});

  @override
  ConsumerState<TrackingPengiriman> createState() => _TrackingPengirimanState();
}

class _TrackingPengirimanState extends ConsumerState<TrackingPengiriman> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.amber),
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
                    children: [
                      IconButton(
                        icon:  const Icon(Icons.arrow_back),
                        color: Colors.black,
                        iconSize: 20,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            Routes.navBarSales,
                            (route) => false,
                            arguments: NavbarSalesViewParam(
                              menuIndex: 3,
                              // 1 = Aktifitas Sales
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 65,
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tracking Pengiriman',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
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
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: const CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
                DraggableScrollableSheet(
                  initialChildSize: 0.7,
                  minChildSize: 0.1,
                  maxChildSize: 0.7,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              title: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Column(
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Detail Produk',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
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
                                Spacings.verSpace(5),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 42,
                                              height: 42,
                                              decoration: const BoxDecoration(
                                                color: MjkColor.floatButtonSalesColor,
                                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                              ),
                                              child: const Icon(
                                                Icons.location_on,
                                                color: MjkColor.white,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 47,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(color: MjkColor.floatButtonSalesColor),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: MjkColor.floatButtonSalesColor,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 53,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(color: MjkColor.floatButtonSalesColor),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: MjkColor.floatButtonSalesColor,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(color: MjkColor.floatButtonSalesColor),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: MjkColor.floatButtonSalesColor,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 47,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(color: MjkColor.lightBlack021),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 42,
                                              height: 42,
                                              decoration: const BoxDecoration(
                                                color: MjkColor.navbarUnselectedColor,
                                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                              ),
                                              child: const Icon(
                                                Icons.check,
                                                color: MjkColor.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacings.horSpace(18),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(22),
                                        child: Column(
                                          children: [
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Gudang CV Maju Jaya Kupang',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(5),
                                            const Row(
                                              children: [
                                                Text(
                                                  'Jl. Timor Raya, Oesapa, Kec. Klp. Lima, Kota Kupang,\nNusa Tenggara Timur',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: MjkColor.black,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Spacings.verSpace(27),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Order Diterima',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(5),
                                            Row(
                                              children: [
                                                const Text(
                                                  'Diterima oleh',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: MjkColor.lightBlack018,
                                                  ),
                                                ),
                                                Spacings.horSpace(4),
                                                const Text(
                                                  'Ajeng Wigati',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: MjkColor.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(33),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Order Diambil',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(5),
                                            const Row(
                                              children: [
                                                Text(
                                                  'Order sudah diambil',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: MjkColor.lightBlack018,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(30),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Order Diantar',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(5),
                                            Row(
                                              children: [
                                                const Text(
                                                  'Order sedang diantar, perkiraan sampai',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: MjkColor.lightBlack018,
                                                  ),
                                                ),
                                                Spacings.horSpace(4),
                                                const Text(
                                                  '8-10hari',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                    color: MjkColor.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(27),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Titik Antar',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacings.verSpace(5),
                                            const Row(
                                              children: [
                                                Text(
                                                  'RT.5/RW.2, Gambir, Kecamatan Gambir, Kota Jakarta\nPusat, Daerah Khusus Ibukota Jakarta 10110',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: MjkColor.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ));
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
