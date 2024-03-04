import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';

class DetailOrder extends ConsumerStatefulWidget {
  const DetailOrder({super.key});

  @override
  ConsumerState<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends ConsumerState<DetailOrder> with TickerProviderStateMixin {
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController salesController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController statusppnController = TextEditingController();
  final TextEditingController barangController = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  final TextEditingController satuanController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final TextEditingController qty1Controller = TextEditingController();
  final TextEditingController satuan1Controller = TextEditingController();
  final TextEditingController diskon1Controller = TextEditingController();
  final TextEditingController diskon2Controller = TextEditingController();
  final TextEditingController diskon3Controller = TextEditingController();
  final TextEditingController directController = TextEditingController();
  final TextEditingController totalController = TextEditingController();
  final TextEditingController nettoController = TextEditingController();
  final TextEditingController subtotalController = TextEditingController();
  final TextEditingController barang1Controller = TextEditingController();
  final TextEditingController qtyunitController = TextEditingController();
  final TextEditingController satuanunitController = TextEditingController();
  final TextEditingController qtyisiController = TextEditingController();
  final TextEditingController satuanisiController = TextEditingController();
  final TextEditingController subtotal1Controller = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController umController = TextEditingController();
  final TextEditingController dppController = TextEditingController();
  final TextEditingController ppnController = TextEditingController();
  final TextEditingController biayalainController = TextEditingController();
  final TextEditingController total1Controller = TextEditingController();

  final TextEditingController stateController = TextEditingController();
  final FocusNode stateFocus = FocusNode();

  var animation;
  var controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innnerBoxIsScrolled) {
          if (innnerBoxIsScrolled) {
            /* Animation */
            controller = AnimationController(
              vsync: this,
              duration: const Duration(
                seconds: 1,
              ),
            );
            animation = Tween(
              begin: 0.0,
              end: 1.0,
            ).animate(controller);
            /* Animation */
            controller.forward();
          }
          return <Widget>[
            SliverAppBar(
              expandedHeight: 80,
              floating: false,
              pinned: true,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              titleSpacing: 0.0,
              toolbarHeight: 80,
              centerTitle: false,
              elevation: 0.0,
              leadingWidth: 0.0,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (innnerBoxIsScrolled == true)
                    FadeTransition(
                      opacity: animation,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacings.verSpace(10),
                          Container(
                            decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                    left: 17,
                                    right: 16,
                                    bottom: 12,
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.arrow_back),
                                        color: Colors.black,
                                        iconSize: 20,
                                        onPressed: () {},
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Detail Order',
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
                          Spacings.verSpace(20),
                        ],
                      ),
                    ),
                ],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 17,
                              right: 16,
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
                                        menuIndex: 4,
                                        // 1 = Aktifitas Sales
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  width: 95,
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Detail Order',
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
                    Spacings.verSpace(20),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Builder(
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            backgroundColor: MjkColor.green006,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check,
                                color: MjkColor.white,
                                size: 20,
                              ),
                              Spacings.horSpace(8),
                              const Text(
                                'Approve',
                                style: TextStyle(
                                  color: MjkColor.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 123,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              backgroundColor: MjkColor.red005,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.close,
                                  color: MjkColor.white,
                                  size: 20,
                                ),
                                Spacings.horSpace(8),
                                const Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: MjkColor.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemCount: 1,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(children: [
                          const Row(
                            children: [
                              Text(
                                'Detail Barang',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Kode',
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
                                'Tanggal',
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
                              controller: tanggalController,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: '02/02/2024',
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
                                  suffixIcon: const Icon(
                                    Icons.calendar_month,
                                    color: MjkColor.lightBlack016,
                                    size: 16,
                                  )),
                              readOnly: true,
                            ),
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Customer',
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
                                hintText: 'BAPAK DJAN FARIDZ',
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
                                'Sales',
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
                                hintText: 'Ajeng Wigati',
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
                                'Keterangan',
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
                            child: TextFormField(
                              maxLines: null,
                              minLines: 5,
                              keyboardType: TextInputType.multiline,
                              scrollPadding: const EdgeInsets.all(8.0),
                              controller: keteranganController,
                              decoration: InputDecoration(
                                hintText: 'TES PENJUALAN 11AM',
                                hintStyle: const TextStyle(
                                  color: MjkColor.lightBlack011,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: MjkColor.lightBlack019, // Add this line to set the background color
                                filled: true,
                                contentPadding: const EdgeInsets.only(left: 16, right: 8, top: 6, bottom: 6),
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
                                'Status PPN',
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
                              controller: statusppnController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'INCLUDE',
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
                                'Barang',
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
                              controller: barangController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'BJ00003 - KOPI MOCCA 27 GRAM',
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
                                'Unit',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Qty',
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
                              controller: qtyController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '1',
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
                                'Satuan',
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
                              controller: satuanController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Karton',
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
                                'Harga',
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
                              controller: hargaController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp 150.000,00',
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
                                'Isi',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Qty',
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
                              controller: qty1Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '144',
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
                                'Satuan',
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
                              controller: satuan1Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'PCS',
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
                                'Discount (%)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                '1',
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
                              controller: diskon1Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '0.00',
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
                                '2',
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
                              controller: diskon2Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '0.00',
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
                                '3',
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
                              controller: diskon3Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '0.00',
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
                                'Discount Rp',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Direct',
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
                              controller: directController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '0.00',
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
                                'Total',
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
                              controller: totalController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '0.00',
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
                                'Netto',
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
                              controller: nettoController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp. 150.000,00',
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
                                'Subtotal',
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
                              controller: subtotalController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp. 150.000,00',
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
                                'Bonus',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Barang',
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
                              controller: barang1Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'BJ00002 - MIE BIASA',
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
                                'Unit',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Qty Unit',
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
                              controller: qtyunitController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '1',
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
                                'Satuan Unit',
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
                              controller: satuanunitController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'PCS',
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
                                'Isi',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: MjkColor.lightBlack011,
                                ),
                              ),
                            ],
                          ),
                          Spacings.verSpace(14),
                          const Row(
                            children: [
                              Text(
                                'Qty Isi',
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
                              controller: qtyisiController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '1',
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
                                'Satuan Isi',
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
                              controller: satuanisiController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'PCS',
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
                                'Subtotal',
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
                              controller: subtotal1Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp 150.000,00',
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
                                'Discount',
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
                              controller: discountController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '0% - Rp 0.00',
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
                                'UM',
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
                              controller: umController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp 0,00',
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
                                'DPP',
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
                              controller: dppController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp 135.135,00',
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
                              controller: ppnController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: '11% - Rp 14.865,00',
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
                                'Biaya Lain',
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
                              controller: biayalainController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp 0,00',
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
                                'Total',
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
                              controller: total1Controller,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                hintText: 'Rp 150.000,00',
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
                          Spacings.verSpace(48),
                        ]),
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
