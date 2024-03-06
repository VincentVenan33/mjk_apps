import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class VideoTutorialDetailView extends ConsumerStatefulWidget {
  const VideoTutorialDetailView({super.key});

  @override
  ConsumerState<VideoTutorialDetailView> createState() => _VideoTutorialDetailViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _VideoTutorialDetailViewState extends ConsumerState<VideoTutorialDetailView> with TickerProviderStateMixin {
  final FocusNode stateFocus = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordbaruController = TextEditingController();

  var animation;
  var controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                              Routes.videotutorial,
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
                              'Video Tutorial',
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
            Padding(
              padding: const EdgeInsets.all(24),
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: MjkColor.black,
                      ),
                      child: Image.asset(
                        'assets/images/Group 15460.png',
                        width: double.infinity,
                      ),
                    ),
                    const Text(
                      'Video ini menjelaskan bagaimana cara menambah customer baru',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: MjkColor.navbarUnselectedColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
