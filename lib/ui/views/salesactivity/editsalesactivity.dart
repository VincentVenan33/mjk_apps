import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class EditSalesActivity extends ConsumerStatefulWidget {
  const EditSalesActivity({super.key});

  @override
  ConsumerState<EditSalesActivity> createState() => _EditSalesActivityState();
}

class _EditSalesActivityState extends ConsumerState<EditSalesActivity> {
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController jamawalController = TextEditingController();
  final TextEditingController jamakhirController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController judulkegiatanController = TextEditingController();
  final TextEditingController rencanakegiatanController = TextEditingController();
  final TextEditingController hasilkegiatanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                            Navigator.pop(context);
                          },
                        ),
                        Spacings.horSpace(95),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Edit Kegiatan',
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
                left: 16,
                right: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Tanggal',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MjkColor.lightBlack011,
                    ),
                  ),
                  Spacings.horSpace(9),
                  SizedBox(
                    width: 330,
                    height: 32,
                    child: TextFormField(
                      controller: tanggalController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: '25 November 2022',
                        hintStyle: const TextStyle(color: MjkColor.lightBlack011),
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
            ),
            Spacings.verSpace(22),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 19,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _showTimePickerawal,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MjkColor.green004, // Set background color to green
                          padding: const EdgeInsets.all(12), // Add padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Apply border radius
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jam Awal',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.white, // Ensure text color is white for visibility
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              height: 60,
                              child: TextFormField(
                                controller: jamawalController,
                                decoration: const InputDecoration(
                                  hintText: '00.00',
                                  hintStyle: TextStyle(color: MjkColor.white),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                                readOnly: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _showTimePickerakhir,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MjkColor.lightBlack015, // Set background color to green
                          padding: const EdgeInsets.all(12), // Add padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Apply border radius
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jam Awal',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.white, // Ensure text color is white for visibility
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              height: 60,
                              child: TextFormField(
                                controller: jamakhirController,
                                decoration: const InputDecoration(
                                  hintText: '00.00',
                                  hintStyle: TextStyle(color: MjkColor.white),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                                readOnly: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacings.verSpace(22),
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
                        hintText: 'Naryo Hartanto',
                        hintStyle: const TextStyle(
                          color: MjkColor.black,
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
                        suffixIcon: const Icon(
                          Icons.search,
                          color: MjkColor.lightBlack016,
                        ),
                      ),
                    ),
                  ),
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'Judul Kegiatan',
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
                      controller: judulkegiatanController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: 'Tulis Judul Kegiatan...',
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
                      ),
                    ),
                  ),
                  Spacings.verSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.list,
                                color: MjkColor.lightBlack016,
                              ),
                              Spacings.horSpace(8),
                              const Text(
                                'Judul Kegiatan Pertama',
                                style: TextStyle(
                                  color: MjkColor.green003,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Icon(
                            Icons.cancel_presentation_rounded,
                            color: MjkColor.lightBlack016,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacings.verSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.list,
                                color: MjkColor.lightBlack016,
                              ),
                              Spacings.horSpace(8),
                              const Text(
                                'Judul Kegiatan Kedua',
                                style: TextStyle(
                                  color: MjkColor.lightBlack016,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Icon(
                            Icons.cancel_presentation_rounded,
                            color: MjkColor.lightBlack016,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'Rencana Kegiatan',
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
                      controller: rencanakegiatanController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                        hintText: 'Tulis Rencana Kegiatan...',
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
                        suffixIcon: const Icon(
                          Icons.add_box_outlined,
                          color: MjkColor.black,
                        ),
                      ),
                    ),
                  ),
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'Gambar',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: MjkColor.lightBlack011,
                        ),
                      ),
                    ],
                  ),
                  Spacings.verSpace(5),
                  const Text(
                    'kotak gambar',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: MjkColor.lightBlack011,
                    ),
                  ),
                  Spacings.verSpace(14),
                  const Row(
                    children: [
                      Text(
                        'Hasil Kegiatan',
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
                    // height: 85,
                    child: TextFormField(
                      maxLines: null,
                      minLines: 5,
                      keyboardType: TextInputType.multiline,
                      scrollPadding: const EdgeInsets.all(8.0),
                      controller: hasilkegiatanController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 16, right: 8, top: 6, bottom: 6),
                        hintText: 'Tulis Hasil Kegiatan',
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
                      ),
                    ),
                  ),
                  Spacings.verSpace(14),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.salesactivity,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTimePickerawal() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(), // Optional: Set initial time
    );

    if (pickedTime != null) {
      // Update the TextEditingController with the selected time
      jamawalController.text = pickedTime.format(context);
    }
  }

  void _showTimePickerakhir() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(), // Optional: Set initial time
    );

    if (pickedTime != null) {
      // Update the TextEditingController with the selected time
      jamakhirController.text = pickedTime.format(context);
    }
  }
}
