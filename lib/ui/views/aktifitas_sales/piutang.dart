import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/utilities/text_styles.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class PiutangView extends ConsumerStatefulWidget {
  const PiutangView({super.key});

  @override
  ConsumerState<PiutangView> createState() => _PiutangViewState();
}

class _PiutangViewState extends ConsumerState<PiutangView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        top: 60,
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
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
                          Expanded(
                            child: Container(
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ajeng Wigati',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Sales Lapangan',
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.notification_important_outlined),
                            color: Colors.black,
                            onPressed: () {
                              // Add your notification icon's onPressed functionality here
                            },
                          ),
                        ],
                      ),
                    ),
                    Spacings.verSpace(25),
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
                    const Text(
                      'TOTAL PIUTANG',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: MjkColor.lightBlack008,
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Divider(
                      height: 1,
                      color: MjkColor.lightBlack009,
                    ),
                    Spacings.verSpace(23),
                    SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: Expanded(
                        child: ListView.separated(
                          separatorBuilder: (_, __) => Spacings.verSpace(12),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5.914), // Add border radius here
                                            color: const Color.fromRGBO(36, 149, 174, 0.80),
                                          ),
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 9,
                                            right: 9.92,
                                            bottom: 4.46,
                                          ),
                                          child: const Text(
                                            'OJ/2024/00001',
                                            style: TextStyle(
                                              color: MjkColor.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Spacings.verSpace(10.43),
                                        Text(
                                          '15 Item',
                                          style: buildTextStyle(
                                            fontSize: 13.011,
                                            fontWeight: 400,
                                            color: MjkColor.lightBlack010,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '01 Januari 2024',
                                      style: buildTextStyle(
                                        fontSize: 15.376,
                                        fontWeight: 700,
                                        color: MjkColor.lightBlack011,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacings.verSpace(9),
                                const Column(
                                  children: [
                                    Divider(
                                      height: 1,
                                      color: MjkColor.lightBlack009,
                                    ),
                                  ],
                                ),
                                Spacings.verSpace(20.82),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Spacings.verSpace(12),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: MjkColor.lightBlack011,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Rp. 400.000,00',
                            style: TextStyle(
                              color: MjkColor.lightBlack011,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
