import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';

import '../../shared/spacings.dart';

class AddDetailOrderJual extends StatefulWidget {
  const AddDetailOrderJual({super.key});

  @override
  State<AddDetailOrderJual> createState() => _AddDetailOrderJualState();
}

class _AddDetailOrderJualState extends State<AddDetailOrderJual> {
  final TextEditingController satuanController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController satuan1Controller = TextEditingController();
  final TextEditingController pricelistController = TextEditingController();
  final TextEditingController penawaranController = TextEditingController();
  final TextEditingController nettoController = TextEditingController();
  final TextEditingController subtotalController = TextEditingController();
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
                  Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'QTY',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: MjkColor.lightBlack008),
                          ),
                        ],
                      ),
                      Spacings.verSpace(12),
                      const Divider(
                        height: 1,
                        color: MjkColor.lightBlack009,
                      ),
                      Spacings.verSpace(12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Satuan*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: satuanController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Pilih Satuan',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: MjkColor.lightBlack014,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Jumlah*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: jumlahController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Masukkan Jumlah',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ISI',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: MjkColor.lightBlack008),
                          ),
                        ],
                      ),
                      Spacings.verSpace(12),
                      const Divider(
                        height: 1,
                        color: MjkColor.lightBlack009,
                      ),
                      Spacings.verSpace(12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Satuan*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: satuan1Controller,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Pilih Satuan',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: MjkColor.lightBlack014,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Harga Pricelist*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: penawaranController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Masukkan Harga Pricelist',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Harga Penawaran*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: penawaranController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Masukkan Harga Penawaran',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lain - Lain',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: MjkColor.lightBlack008),
                          ),
                        ],
                      ),
                      Spacings.verSpace(12),
                      const Divider(
                        height: 1,
                        color: MjkColor.lightBlack009,
                      ),
                      Spacings.verSpace(12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Netto*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: nettoController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Masukkan Netto',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Subtotal*',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: MjkColor.lightBlack011,
                            ),
                          ),
                        ],
                      ),
                      Spacings.verSpace(5),
                      SizedBox(
                        width: double.infinity,
                        height: 32,
                        child: TextFormField(
                          controller: subtotalController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                            hintText: 'Masukkan Subtotal',
                            hintStyle: const TextStyle(
                              color: MjkColor.lightBlack015,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Spacings.verSpace(
                        20,
                      ),
                    ],
                  ),
                  Spacings.verSpace(28),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.addorderjual,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 124,
                          vertical: 16,
                        ),
                        backgroundColor: MjkColor.floatButtonSalesColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Add Detail Barang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
    );
  }
}
