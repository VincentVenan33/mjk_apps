import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';
import 'package:mjk_apps/ui/views/navbar/navbar_sales_view.dart';

class NotifikasiView extends ConsumerStatefulWidget {
  const NotifikasiView({super.key});

  @override
  ConsumerState<NotifikasiView> createState() => _NotifikasiViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _NotifikasiViewState extends ConsumerState<NotifikasiView> with TickerProviderStateMixin {
  final FocusNode stateFocus = FocusNode();

  var animation;
  var controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                expandedHeight: 90,
                floating: false,
                pinned: true,
                backgroundColor: MjkColor.backgroundAtas,
                automaticallyImplyLeading: false,
                titleSpacing: 0.0,
                toolbarHeight: 90,
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
                                      // top: 20,
                                      left: 17,
                                      right: 16,
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
                                              'Daftar Notifikasi',
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
                                          menuIndex: 1,
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
                                        'Daftar Notifikasi',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 600,
                        child: Expanded(
                          child: ListView.separated(
                            separatorBuilder: (_, __) => Spacings.verSpace(12),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                'assets/icons/notification-bing.png',
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Kiriman Dalam Perjalan',
                                            style: TextStyle(
                                              fontSize: 15.38,
                                              fontWeight: FontWeight.bold,
                                              color: MjkColor.black,
                                            ),
                                          ),
                                          Spacings.verSpace(15),
                                          const Text(
                                            'Kiriman sedang diantar oleh Ajeng Wigati',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: MjkColor.lightBlack010,
                                            ),
                                          ),
                                          Spacings.verSpace(15),
                                          const Text(
                                            '2024/02/29  17:30:20',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: MjkColor.lightBlack010,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacings.verSpace(20),
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
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
