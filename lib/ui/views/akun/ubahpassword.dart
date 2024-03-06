import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class UbahPasswordView extends ConsumerStatefulWidget {
  const UbahPasswordView({super.key});

  @override
  ConsumerState<UbahPasswordView> createState() => _UbahPasswordViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _UbahPasswordViewState extends ConsumerState<UbahPasswordView> with TickerProviderStateMixin {
  final FocusNode stateFocus = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordbaruController = TextEditingController();

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
                                          onPressed: () {
                                            Navigator.pushNamed(
                                              context,
                                              Routes.akun,
                                            );
                                          },
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Ubah Password',
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
                                      Navigator.pushNamed(
                                        context,
                                        Routes.akun,
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
                                        'Ubah Password',
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
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 600,
                        child: Expanded(
                          child: Column(
                            children: [
                              Spacings.verSpace(20),
                              const Row(
                                children: [
                                  Text(
                                    'Password Lama',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: MjkColor.lightBlack014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacings.verSpace(5),
                              SizedBox(
                                width: double.infinity,
                                height: 32,
                                child: TextFormField(
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                    hintStyle: const TextStyle(
                                      color: MjkColor.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: MjkColor.lightBlack014, width: 1.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Spacings.verSpace(40),
                              const Row(
                                children: [
                                  Text(
                                    'Password Baru*',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: MjkColor.lightBlack014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacings.verSpace(5),
                              SizedBox(
                                width: double.infinity,
                                height: 32,
                                child: TextFormField(
                                  controller: passwordbaruController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
                                    hintStyle: const TextStyle(
                                      color: MjkColor.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: MjkColor.lightBlack014, width: 1.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Spacings.verSpace(5),
                              const Row(
                                children: [
                                  Text(
                                    '*Tidak boleh sama dengan password lama, harus menggunakan kombinasi huruf \n kapital dan angka',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: MjkColor.lightBlack014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacings.verSpace(350),
                              SizedBox(
                                width: double.infinity,
                                // height: 48,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      Routes.akun,
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
