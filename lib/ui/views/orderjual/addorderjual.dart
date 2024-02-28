import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class AddOrderJual extends ConsumerStatefulWidget {
  const AddOrderJual({super.key});

  @override
  ConsumerState<AddOrderJual> createState() => _AddOrderJualState();
}

class _AddOrderJualState extends ConsumerState<AddOrderJual> {
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController salesController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
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
                            Navigator.pushNamed(
                              context,
                              Routes.orderjual,
                            );
                          },
                        ),
                        Spacings.horSpace(95),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tambah Order Jual',
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
                          onPressed: _pickDate,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                DateFormat('dd/MM/yyyy').format(_selectedDate),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: MjkColor.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Icon(
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
                        'Pelanggan*',
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
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: 'Pilih Pelangan',
                        hintStyle: const TextStyle(
                          color: MjkColor.lightBlack015,
                          fontWeight: FontWeight.bold,
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
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Browse Customer',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: MjkColor.black,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.cancel_outlined,
                                          color: MjkColor.lightBlack017,
                                        ),
                                      ),
                                    ],
                                  ),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 270,
                                              height: 38,
                                              child: TextFormField(
                                                controller: customerController,
                                                decoration: InputDecoration(
                                                  contentPadding: const EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 8,
                                                  ),
                                                  hintText: 'Pencarian',
                                                  hintStyle: const TextStyle(
                                                    color: MjkColor.lightBlack016,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 13,
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(1000),
                                                    borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(1000),
                                                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                                                  ),
                                                  prefixIcon: const Icon(
                                                    Icons.search_rounded,
                                                    size: 14,
                                                    color: MjkColor.lightBlack016,
                                                  ),
                                                  fillColor: MjkColor.lightBlack016,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacings.verSpace(10),
                                        SizedBox(
                                          width: 270,
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
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: MjkColor.lightBlue006,
                                                    ),
                                                    child: const Text(
                                                      'C-BRI-00082',
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
                                                    'ARGA KENCANA MANDIRI PT',
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
                                                    'Jakarta,\nJakarta Barat',
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
                                          width: 270,
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
                                          width: 270,
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
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: MjkColor.lightBlue006,
                                                    ),
                                                    child: const Text(
                                                      'C-BRI-00126',
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
                                                    'BAPAK AFIF',
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
                                                    'Jakarta,\nJakarta Barat',
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
                                          width: 270,
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
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: MjkColor.lightBlue006,
                                                    ),
                                                    child: const Text(
                                                      'C-BRI-00126',
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
                                                    'BAPAK AGUS',
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
                                                    'Jl. Anggrek Cen..\nJakarta Barat',
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
                                );
                              },
                            );
                          },
                          color: MjkColor.lightBlack016,
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
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: 'Masukkan PPN',
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.katalogproduk,
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
                  Spacings.verSpace(28),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.orderjual,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 144,
                          vertical: 16,
                        ),
                        backgroundColor: MjkColor.floatButtonSalesColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Simpan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Spacings.verSpace(30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
