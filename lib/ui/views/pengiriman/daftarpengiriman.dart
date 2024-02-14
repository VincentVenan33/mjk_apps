import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';

import '../../shared/spacings.dart';

class DaftarPengirimanView extends ConsumerStatefulWidget {
  const DaftarPengirimanView({Key? key}) : super(key: key);

  @override
  ConsumerState<DaftarPengirimanView> createState() => _DaftarPengirimanViewState();
}

class _DaftarPengirimanViewState extends ConsumerState<DaftarPengirimanView> {
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
                        'Daftar Pengiriman',
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
                ElevatedButton(
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
                      Routes.trackingpengiriman,
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle, // Makes the container circular
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1638803040283-7a5ffd48dad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80', // Replace with your image URL
                                fit: BoxFit.cover, // You can choose the BoxFit that suits your needs
                              ),
                            ),
                          ),
                          Spacings.horSpace(20),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
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
                                        Spacings.horSpace(50),
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
                                                text: 'Delivery',
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          Routes.trackingpengiriman,
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
                Spacings.verSpace(14),
                ElevatedButton(
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
                      Routes.trackingpengiriman,
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle, // Makes the container circular
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1638803040283-7a5ffd48dad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80', // Replace with your image URL
                                fit: BoxFit.cover, // You can choose the BoxFit that suits your needs
                              ),
                            ),
                          ),
                          Spacings.horSpace(20),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
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
                                        Spacings.horSpace(50),
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
                                                text: 'Delivery',
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          Routes.trackingpengiriman,
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
                Spacings.verSpace(14),
                ElevatedButton(
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
                      Routes.trackingpengiriman,
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle, // Makes the container circular
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1638803040283-7a5ffd48dad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80', // Replace with your image URL
                                fit: BoxFit.cover, // You can choose the BoxFit that suits your needs
                              ),
                            ),
                          ),
                          Spacings.horSpace(20),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
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
                                        Spacings.horSpace(50),
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
                                                text: 'Delivery',
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
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          Routes.trackingpengiriman,
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
        ],
      ),
    );
  }
}
