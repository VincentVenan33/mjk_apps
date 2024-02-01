import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class CustomerView extends ConsumerStatefulWidget {
  const CustomerView({super.key});

  @override
  ConsumerState<CustomerView> createState() => _CustomerViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _CustomerViewState extends ConsumerState<CustomerView> {
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
                              'Customer',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
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
                    width: double.infinity,
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
                    width: double.infinity,
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
                    width: double.infinity,
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
                ],
              ),
            ),
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
                        Routes.addcustomer,
                      );
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 31.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
