import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';

import '../../shared/spacings.dart';

class ApprovalView extends ConsumerStatefulWidget {
  const ApprovalView({Key? key}) : super(key: key);

  @override
  ConsumerState<ApprovalView> createState() => _ApprovalViewState();
}

class _ApprovalViewState extends ConsumerState<ApprovalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: MjkColor.backgroundAtas),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 44,
                    left: 17,
                    right: 16,
                    bottom: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Daftar Order Jual',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              backgroundColor: Color(Colors.transparent.value),
                              surfaceTintColor: Colors.white,
                              shadowColor: const Color(0x00000000),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                Routes.detailorder,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
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
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Sales\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Ajeng Wigati',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(20),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Tanggal\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '11/01/2024',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(20),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Status\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Approved',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.green005,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          Routes.detailorder,
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 51.5,
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
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(12),
                  ],
                ),
                Spacings.verSpace(14),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              backgroundColor: Color(Colors.transparent.value),
                              surfaceTintColor: Colors.white,
                              shadowColor: const Color(0x00000000),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                Routes.detailorder,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
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
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Sales\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Ajeng Wigati',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(20),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Tanggal\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '11/01/2024',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(20),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Status\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Waiting',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.yellow001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          Routes.detailorder,
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 51.5,
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
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(12),
                  ],
                ),
                Spacings.verSpace(14),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              backgroundColor: Color(Colors.transparent.value),
                              surfaceTintColor: Colors.white,
                              shadowColor: const Color(0x00000000),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                Routes.detailorder,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
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
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Sales\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Ajeng Wigati',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(20),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Tanggal\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '11/01/2024',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacings.horSpace(20),
                                        RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Status\n',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: MjkColor.lightBlack018,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Rejected',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: MjkColor.red004,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          Routes.detailorder,
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 51.5,
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
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
