import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class SalesActivityView extends ConsumerStatefulWidget {
  const SalesActivityView({super.key});

  @override
  ConsumerState<SalesActivityView> createState() => _SalesActivityViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _SalesActivityViewState extends ConsumerState<SalesActivityView> {
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
                              'Sales Activity',
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
            Spacings.verSpace(26),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  children: [
                    const Text(
                      'TODAY’S ACTIVITY',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: MjkColor.lightBlack008,
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(14),
                  ],
                ),
              ),
            ),
            dateCardSales(context),
            Spacings.verSpace(14),
            const Divider(
              height: 1,
              color: MjkColor.lightBlack009,
            ),
            Spacings.verSpace(20),
            kegiatanCardSales(context),
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
                        Routes.addsalesactivity,
                      );
                    },
                    child: const Icon(Icons.add, color: Colors.white, size: 31.5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget dateCardSales(BuildContext context) {
    List<Map<String, dynamic>> dateInfoList = [];

    // Define your currentDate here
    DateTime currentDate = DateTime.now();

    for (int i = 0; i < 7; i++) {
      DateTime nextDate = currentDate.add(Duration(days: i));

      // Format the date to get the day name and number
      String dayName = DateFormat('EE').format(nextDate); // Full day name
      int dayNumber = nextDate.day; // Day number

      // Save the day name and number to the array
      dateInfoList.add({
        'dayName': dayName,
        'dayNumber': dayNumber,
      });
    }

    // Print the array for demonstration
    print(dateInfoList);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dateInfoList.map((dateInfo) {
          DateTime date = currentDate.add(Duration(days: dateInfoList.indexOf(dateInfo)));

          bool isToday = date.isAtSameMomentAs(currentDate);
          return Column(
            children: [
              Text(
                dateInfo['dayName'],
                style: TextStyle(
                  color: isToday ? const Color(0xFF000000) : const Color(0xFF868897),
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Text(
                dateInfo['dayNumber'].toString(),
                style: TextStyle(
                  color: isToday ? const Color(0xFF000000) : const Color(0xFF868897),
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget kegiatanCardSales(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [Text('08.00')],
                  ),
                  Spacings.verSpace(7),
                  Container(
                    height: 78,
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: MjkColor.lightBlack009),
                      ),
                    ),
                  ),
                  Spacings.verSpace(7),
                  const Row(
                    children: [Text('11.00')],
                  )
                ],
              ),
              Spacings.horSpace(18),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Customer - Judul Kegiatan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: MjkColor.lightBlack010,
                              size: 15,
                            ),
                          ],
                        ),
                        Spacings.verSpace(10),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Pertama',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.green003,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Kedua',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.lightBlack013,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Ketiga',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.lightBlack013,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacings.verSpace(24),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [Text('13.00')],
                  ),
                  Spacings.verSpace(7),
                  Container(
                    height: 78,
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: MjkColor.lightBlack009),
                      ),
                    ),
                  ),
                  Spacings.verSpace(7),
                  const Row(
                    children: [Text('15.00')],
                  )
                ],
              ),
              Spacings.horSpace(18),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Customer - Judul Kegiatan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: MjkColor.lightBlack010,
                              size: 15,
                            ),
                          ],
                        ),
                        Spacings.verSpace(10),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Pertama',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.green003,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Kedua',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.lightBlack013,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacings.verSpace(24),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [Text('16.00')],
                  ),
                  Spacings.verSpace(7),
                  Container(
                    height: 78,
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: MjkColor.lightBlack009),
                      ),
                    ),
                  ),
                  Spacings.verSpace(7),
                  const Row(
                    children: [Text('17.00')],
                  )
                ],
              ),
              Spacings.horSpace(18),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Customer - Judul Kegiatan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: MjkColor.lightBlack010,
                              size: 15,
                            ),
                          ],
                        ),
                        Spacings.verSpace(10),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Pertama',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.green003,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Kedua',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.lightBlack013,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 9,
                              color: MjkColor.lightBlack013,
                            ),
                            Text(
                              'Judul Kegiatan Kedua',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: MjkColor.lightBlack013,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
