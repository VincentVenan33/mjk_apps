import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class DetailOrderPenjualan extends ConsumerStatefulWidget {
  const DetailOrderPenjualan({super.key});

  @override
  ConsumerState<DetailOrderPenjualan> createState() => _DetailOrderPenjualanState();
}

class _DetailOrderPenjualanState extends ConsumerState<DetailOrderPenjualan> {
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController salesController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController satuanController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController satuan1Controller = TextEditingController();
  final TextEditingController pricelistController = TextEditingController();
  final TextEditingController penawaranController = TextEditingController();
  final TextEditingController nettoController = TextEditingController();
  final TextEditingController subtotalController = TextEditingController();
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  void _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );

    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                            Navigator.pop(
                              context,
                            );
                          },
                        ),
                        Spacings.horSpace(95),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Detail Order Jual',
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
            Spacings.verSpace(11),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 19,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Kode*',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
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
                      controller: kodeController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: 'C-BRI-00009',
                        hintStyle: const TextStyle(
                          color: MjkColor.lightBlack011,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: MjkColor.lightBlack019, // Add this line to set the background color
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                        ),
                      ),
                      readOnly: true,
                    ),
                  ),
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'Tanggal*',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: MjkColor.lightBlack011,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(
                              8,
                            ),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: MjkColor.white,
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '11/11/2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: MjkColor.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                Icons.calendar_month,
                                color: MjkColor.lightBlack016,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'Customer*',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
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
                      controller: customerController,
                      readOnly: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: 'BAPAK DJAN FARIDZ',
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
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'PPN',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
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
                      controller: salesController,
                      readOnly: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: '0',
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
                  Spacings.verSpace(28),
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
                            hintText: 'KRG',
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
                          readOnly: true,
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
                            hintText: '100',
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
                          readOnly: true,
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
                            hintText: 'KRG',
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
                          readOnly: true,
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
                            hintText: 'Rp 100.000,00',
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
                          readOnly: true,
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
                            hintText: 'Rp 100.000,00',
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
                          readOnly: true,
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
                            hintText: 'Rp 100.000,00',
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
                          readOnly: true,
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
                            hintText: 'Rp 100.000,00',
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
                          readOnly: true,
                        ),
                      ),
                      Spacings.verSpace(
                        20,
                      ),
                    ],
                  ),
                  Spacings.verSpace(100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
