import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/core/models/get_data/get_data_dto.dart';
import 'package:mjk_apps/core/networks/create_customer_dto.dart';
import 'package:mjk_apps/core/networks/get_data_dto_network.dart';
import 'package:mjk_apps/core/view_models/customer/addcustomer_view_model.dart';
import 'package:mjk_apps/core/view_models/view_model.dart';
import 'package:mjk_apps/ui/shared/loading_overlay.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/shared/unfocus_helper.dart';

class AddCustomer extends ConsumerStatefulWidget {
  const AddCustomer({super.key});

  @override
  ConsumerState<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends ConsumerState<AddCustomer> {
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController gelarController = TextEditingController();
  final TextEditingController kategoricustomerController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController desaController = TextEditingController();
  final TextEditingController kecamatanController = TextEditingController();
  final TextEditingController kabupatenController = TextEditingController();
  final TextEditingController provinsiController = TextEditingController();
  final TextEditingController teleponController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController ktpController = TextEditingController();
  final TextEditingController alamatktpController = TextEditingController();
  final TextEditingController jatuhtempoController = TextEditingController();
  final TextEditingController npwpController = TextEditingController();
  final TextEditingController kontakController = TextEditingController();
  final TextEditingController salesController = TextEditingController();
  final TextEditingController plafonController = TextEditingController();
  final TextEditingController tipeoutletController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  late DateTime _selectedDate;
  String selectedCategory = ""; // Initialize to an empty string
  List<String> categories = ["Category 1", "Category 2", "Category 3"]; // Define categories within the state

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
    return ViewModel<AddCustomerViewModel>(
      model: AddCustomerViewModel(
        getDataDTOApi: ref.read(getDataDTOApi),
        setCustomerDTOApi: ref.read(setCustomerDTOApi),
      ),
      onModelReady: (AddCustomerViewModel model) => model.initModel(),
      builder: (_, AddCustomerViewModel model, __) {
        return LoadingOverlay(
          isLoading: model.busy,
          child: UnfocusHelper(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
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
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    color: Colors.black,
                                    iconSize: 20,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.customer,
                                      );
                                    },
                                  ),
                                  Spacings.horSpace(85),
                                  const Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tambah Pelanggan',
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
                            Spacings.horSpace(5),
                            SizedBox(
                              width: double.infinity,
                              height: 32,
                              child: TextFormField(
                                controller: kodeController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'OL-BRI/2212/00001',
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
                                  'Nama*',
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
                                controller: namaController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'DJAN FARIDZ',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.black,
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
                                  'Gelar*',
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
                                controller: gelarController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'Search',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
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
                                  suffixIcon: SizedBox(
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.refresh_outlined,
                                            color: MjkColor.lightBlack014,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.search_outlined,
                                            color: MjkColor.lightBlack014,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Spacings.verSpace(14),
                            const Row(
                              children: [
                                Text(
                                  'Kategori Pelanggan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: MjkColor.lightBlack011,
                                  ),
                                ),
                              ],
                            ),
                            Spacings.verSpace(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField<GetDataContent>(
                                    value: model
                                        .selectedKategoriCustomer, // Ensure this matches the value of an item in the list
                                    hint: const Text('Cari...'),
                                    items: model.kategoricustomer
                                        .map((item) => DropdownMenuItem<GetDataContent>(
                                              value: item,
                                              child: kategoriCustomer(
                                                context,
                                                item,
                                              ),
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        model.setselectedkategori(value);
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
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
                                IconButton(
                                  onPressed: () {},
                                  icon: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.refresh_outlined,
                                          color: MjkColor.lightBlack014,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.search_outlined,
                                          color: MjkColor.lightBlack014,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacings.verSpace(14),
                            const Row(
                              children: [
                                Text(
                                  'Alamat*',
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
                                controller: alamatController,
                                decoration: InputDecoration(
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
                              ),
                            ),
                            Spacings.verSpace(14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Desa/Kelurahan',
                                    ),
                                    Spacings.verSpace(5),
                                    SizedBox(
                                      width: 191,
                                      height: 32,
                                      child: TextFormField(
                                        scrollPadding: const EdgeInsets.all(8.0),
                                        controller: desaController,
                                        decoration: InputDecoration(
                                          hintText: 'Desa X',
                                          hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: MjkColor.black,
                                          ),
                                          contentPadding: const EdgeInsets.only(left: 16, right: 8, top: 6, bottom: 6),
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
                                              Icons.search_outlined,
                                              color: MjkColor.lightBlack014,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacings.verSpace(14),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Kecamatan',
                                    ),
                                    Spacings.verSpace(5),
                                    SizedBox(
                                      width: 136,
                                      height: 32,
                                      child: TextFormField(
                                        scrollPadding: const EdgeInsets.all(8.0),
                                        controller: kecamatanController,
                                        decoration: InputDecoration(
                                          hintText: 'LOWOKWARU',
                                          hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: MjkColor.black,
                                          ),
                                          fillColor:
                                              MjkColor.lightBlack019, // Add this line to set the background color
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
                                  ],
                                ),
                              ],
                            ),
                            Spacings.verSpace(14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Kabupaten/Kota',
                                    ),
                                    Spacings.verSpace(5),
                                    SizedBox(
                                      width: 191,
                                      height: 32,
                                      child: TextFormField(
                                        scrollPadding: const EdgeInsets.all(8.0),
                                        controller: kabupatenController,
                                        decoration: InputDecoration(
                                          hintText: 'Malang',
                                          hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: MjkColor.black,
                                          ),
                                          fillColor:
                                              MjkColor.lightBlack019, // Add this line to set the background color
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
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Provinsi',
                                    ),
                                    Spacings.verSpace(5),
                                    SizedBox(
                                      width: 136,
                                      height: 32,
                                      child: TextFormField(
                                        scrollPadding: const EdgeInsets.all(8.0),
                                        controller: provinsiController,
                                        decoration: InputDecoration(
                                          hintText: 'Jawa Timur',
                                          hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: MjkColor.black,
                                          ),
                                          fillColor:
                                              MjkColor.lightBlack019, // Add this line to set the background color
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
                                  ],
                                ),
                              ],
                            ),
                            Spacings.verSpace(14),
                            const Row(
                              children: [
                                Text(
                                  'Telepon',
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
                                controller: teleponController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'Telepon Customer',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
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
                                keyboardType: const TextInputType.numberWithOptions(
                                    signed: true, decimal: false), // Allow only numbers
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(
                                      r'^(?:\+|0|62)?[0-9]+$',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacings.verSpace(14),
                            const Row(
                              children: [
                                Text(
                                  'Location (Latlong)',
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
                                controller: locationController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'Latlong Customer',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  fillColor: MjkColor.lightBlack019,
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
                                  'KTP',
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
                                controller: ktpController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'No. KTP Customer',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
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
                                  'Alamat KTP',
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
                                controller: alamatktpController,
                                decoration: InputDecoration(
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
                              ),
                            ),
                            Spacings.verSpace(14),
                            const Row(
                              children: [
                                Text(
                                  'Jatuh Tempo',
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
                                controller: jatuhtempoController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'Jatuh Tempo KTP Customer',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
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
                                  'No. NPWP',
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
                                controller: npwpController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'No. NPWP Customer',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
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
                                  'Kontak',
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
                                controller: kontakController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                  hintText: 'Kontak Customer',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
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
                                  hintText: 'IDR',
                                  hintStyle: const TextStyle(
                                    color: MjkColor.lightBlack015,
                                    fontWeight: FontWeight.w400,
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
                                  suffixIcon: SizedBox(
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.refresh_outlined,
                                            color: MjkColor.lightBlack014,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.search_outlined,
                                            color: MjkColor.lightBlack014,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Spacings.verSpace(14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Plafon',
                                    ),
                                    Spacings.verSpace(5),
                                    SizedBox(
                                      width: 191,
                                      height: 48,
                                      child: TextFormField(
                                        scrollPadding: const EdgeInsets.all(8.0),
                                        controller: plafonController,
                                        decoration: InputDecoration(
                                          hintText: 'Plafon',
                                          hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: MjkColor.black,
                                          ),
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
                                      ),
                                    ),
                                  ],
                                ),
                                Spacings.verSpace(14),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Tanggal Edit Plafon',
                                    ),
                                    Spacings.verSpace(5),
                                    Container(
                                      width: 136,
                                      height: 48,
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
                                  ],
                                ),
                              ],
                            ),
                            Spacings.verSpace(14),
                            const Row(
                              children: [
                                Text(
                                  'Tipe Outlet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: MjkColor.lightBlack011,
                                  ),
                                ),
                              ],
                            ),
                            Spacings.verSpace(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField<GetDataContent>(
                                    value: model
                                        .selectedTipeOutlet, // Ensure this matches the value of an item in the list
                                    hint: const Text('Cari...'),
                                    items: model.tipeoutlet
                                        .map((item) => DropdownMenuItem<GetDataContent>(
                                              value: item,
                                              child: tipeOutlet(
                                                context,
                                                item,
                                              ),
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        model.setselectedtipeoutlet(value);
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
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
                                IconButton(
                                  onPressed: () {},
                                  icon: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.refresh_outlined,
                                          color: MjkColor.lightBlack014,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.search_outlined,
                                          color: MjkColor.lightBlack014,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                              ),
                            ),
                            Spacings.verSpace(14),
                            SizedBox(
                              width: double.infinity,
                              // height: 48,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final bool response = await model.addCustomertModel(
                                    nomormhdesa: 0,
                                    nomormhkelurahan: 0,
                                    nomormhkecamatan: 0,
                                    nomormhkota: 0,
                                    nomormhprovinsi: 0,
                                    nomormhgelar: 0,
                                    nomormhsales: 0,
                                    kode: kodeController.text,
                                    nama: namaController.text,
                                    jatuhtempo: jatuhtempoController.text,
                                    plafon: plafonController.text,
                                    formatcode: 'kode_master_customer',
                                    alamat: alamatController.text,
                                    alamatktp: alamatController.text,
                                    shareloc: "share_loc",
                                    notelp: teleponController.text,
                                    hp: "hp",
                                    ktp: ktpController.text,
                                    nonpwp: npwpController.text,
                                    kontak: kontakController.text,
                                    keterangan: keteranganController.text,
                                    dibuatoleh: 1,
                                  );
                                  if (response) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Gagal'),
                                          content: const Text('Data Gagal Disimpan'),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text('OK'),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Succes'),
                                          content: const Text('Data Berhasil Disimpan'),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text('OK'),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                  context,
                                                  Routes.customer,
                                                );
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
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
              ),
            ),
          ),
        );
      },
    );
  }

  Widget kategoriCustomer(BuildContext context, GetDataContent item) {
    return Text(
      item.nama,
      style: const TextStyle(
        color: MjkColor.black,
      ),
    );
  }

  Widget tipeOutlet(BuildContext context, GetDataContent item) {
    return Text(
      item.nama,
      style: const TextStyle(
        color: MjkColor.black,
      ),
    );
  }
}
