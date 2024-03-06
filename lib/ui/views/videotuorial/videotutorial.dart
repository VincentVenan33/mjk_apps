import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/app_constants/route.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class VideoTutorialView extends ConsumerStatefulWidget {
  const VideoTutorialView({super.key});

  @override
  ConsumerState<VideoTutorialView> createState() => _VideoTutorialViewState();

  List<int> getNumbersArray() {
    // Define your array of numbers here
    return [1, 2, 3, 4, 5];
  }
}

class _VideoTutorialViewState extends ConsumerState<VideoTutorialView> with TickerProviderStateMixin {
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
                            itemCount: 10, // Changed to 10 for 10 video tutorials
                            itemBuilder: (context, index) {
                              final videoTitle = "Video Tutorial ${index + 1}"; // Dynamic title
                              return Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.videotutorialdetail,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0),
                                      backgroundColor: Color(MjkColor.transparent.value),
                                      surfaceTintColor: Colors.white,
                                      shadowColor: const Color(0x00000000),
                                      shape: const RoundedRectangleBorder(
                                        side: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                          Radius.zero,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            left: 0,
                                            right: 20,
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ImageIcon(
                                                AssetImage(
                                                  'assets/icons/lets-icons_video.png',
                                                ),
                                                color: MjkColor.black,
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              videoTitle, // Use the dynamic title
                                              style: const TextStyle(
                                                fontSize: 15.38,
                                                fontWeight: FontWeight.bold,
                                                color: MjkColor.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Spacings.verSpace(20),
                                  const Column(
                                    children: [
                                      Divider(
                                        height: 1,
                                        color: MjkColor.lightBlack009,
                                      ),
                                    ],
                                  ),
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
