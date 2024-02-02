import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';

import '../../shared/spacings.dart';

class DetailOrderJual extends StatefulWidget {
  const DetailOrderJual({super.key});

  @override
  State<DetailOrderJual> createState() => _DetailOrderJualState();
}

class _DetailOrderJualState extends State<DetailOrderJual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MjkColor.backgroundAtas, // Warna latar belakang AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            "Item Detail",
            style: TextStyle(
              color: MjkColor.black, // Ubah warna teks sesuai kebutuhan
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  'https://indraco.com/gmb/tanpalogo/TUGUBUAYA/TB-301.png',
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Spacings.verSpace(
              20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'KOPI TUGU BUAYA',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacings.verSpace(
                            5,
                          ),
                          const Text(
                            'F-001-24',
                            style: TextStyle(
                              color: MjkColor.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacings.verSpace(
                    20,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Detail Produk',
                              style:
                                  TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: MjkColor.lightBlack008),
                            ),
                          ],
                        ),
                        Spacings.verSpace(12),
                        const Divider(
                          height: 1,
                          color: MjkColor.lightBlack009,
                        ),
                        Spacings.verSpace(32),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Golongan',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'MINUMAN',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jenis Penjualan',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'TUNAI',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Group',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'KOPI',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Satuan',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'PCS',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Berat',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '18,00',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Konversi 2',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Konversi 3',
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '144',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacings.verSpace(
                          13,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFEBEBEB),
                        ),
                        Spacings.verSpace(
                          30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
