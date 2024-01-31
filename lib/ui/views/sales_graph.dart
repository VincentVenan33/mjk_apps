import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/core/utilities/text_styles.dart';
import 'package:mjk_apps/ui/shared/spacings.dart';

class SalesGraph extends StatefulWidget {
  const SalesGraph({super.key});

  @override
  State<SalesGraph> createState() => _SalesGraphState();
}

class _SalesGraphState extends State<SalesGraph> with TickerProviderStateMixin {
  bool _isShown = false;
  int maxYData = 0;

  late AnimationController _animationController;
  late Animation<double> _animation;

  final Color leftBarColor = const Color(0xff990000); // Pembelian
  final Color rightBarColor = const Color(0xffff0000); // Penjualan
  final double width = 12;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  void _initBarChartData() {
    // Dummies
    final BarChartGroupData barGroup1 = makeGroupData(0, 19, 21);
    final BarChartGroupData barGroup2 = makeGroupData(1, 37, 43);
    final BarChartGroupData barGroup3 = makeGroupData(2, 56, 78);
    final BarChartGroupData barGroup4 = makeGroupData(3, 42, 59);
    final BarChartGroupData barGroup5 = makeGroupData(4, 16, 19);
    final BarChartGroupData barGroup6 = makeGroupData(5, 55, 65);
    final BarChartGroupData barGroup7 = makeGroupData(6, 38, 45);

    final List<BarChartGroupData> items = <BarChartGroupData>[
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    // TODO(willy): dynamically append `items` when data from endpoint is ready

    showingBarGroups = rawBarGroups = items;
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: <BarChartRodData>[
        BarChartRodData(
          toY: y1,
          color: leftBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: rightBarColor,
          width: width,
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    _initBarChartData();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleShowHide,
      child: Container(
        padding: const EdgeInsets.all(16),
        // color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'GRAFIK PENJUALAN TAHUN 2024',
                  style: buildTextStyle(
                    fontSize: 12,
                    fontWeight: 500,
                    color: MjkColor.lightBlack008,
                  ),
                ),
              ],
            ),
            Spacings.verSpace(12),
            const Divider(
              height: 1,
              color: MjkColor.lightBlack009,
            ),
            SizeTransition(
              sizeFactor: _animation,
              axis: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Spacings.verSpace(!_isShown ? 16 : 11),
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MjkColor.blue006,
                                  ),
                                ),
                                Spacings.horSpace(8),
                                Text(
                                  'Penjualan',
                                  style: buildTextStyle(
                                    fontSize: 10,
                                    fontWeight: 400,
                                    color: MjkColor.black,
                                  ),
                                ),
                              ],
                            ),
                            Spacings.verSpace(8),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff990000),
                                  ),
                                ),
                                Spacings.horSpace(8),
                                Text(
                                  'Pembelian',
                                  style: buildTextStyle(
                                    fontSize: 10,
                                    fontWeight: 400,
                                    color: MjkColor.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacings.verSpace(24),
                  SizedBox(
                    height: 180,
                    child: BarChart(
                      BarChartData(
                        maxY: maxY,
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: Colors.grey,
                            getTooltipItem: (a, b, c, d) => null,
                          ),
                          touchCallback: (FlTouchEvent event, response) {
                            if (response == null || response.spot == null) {
                              setState(() {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                              });
                              return;
                            }

                            touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                            setState(() {
                              if (!event.isInterestedForInteractions) {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                                return;
                              }
                              showingBarGroups = List.of(rawBarGroups);
                              if (touchedGroupIndex != -1) {
                                var sum = 0.0;
                                for (final rod in showingBarGroups[touchedGroupIndex].barRods) {
                                  sum += rod.toY;
                                }
                                final avg = sum / showingBarGroups[touchedGroupIndex].barRods.length;

                                showingBarGroups[touchedGroupIndex] = showingBarGroups[touchedGroupIndex].copyWith(
                                  barRods: showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                                    return rod.copyWith(toY: avg);
                                  }).toList(),
                                );
                              }
                            });
                          },
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 42,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 48,
                              interval: leftAxisInterval,
                              getTitlesWidget: leftTitles,
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: showingBarGroups,
                        gridData: FlGridData(
                          show: true,
                          drawVerticalLine: false,
                          drawHorizontalLine: true,
                          horizontalInterval: leftAxisInterval,
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

  void _toggleShowHide() {
    if (_animation.status != AnimationStatus.completed) {
      _animationController.forward();
    } else {
      _animationController.animateBack(
        0,
        duration: const Duration(milliseconds: 500),
      );
    }
    setState(() {
      _isShown = !_isShown;
    });
  }

  // void _toggleShowHide() {
  //   if (_animation.status != AnimationStatus.completed) {
  //     _animationController.forward();
  //   } else {
  //     _animationController.animateBack(
  //       0,
  //       duration: const Duration(milliseconds: 500),
  //     );
  //   }
  //   setState(() {
  //     _isShown = !_isShown;
  //   });
  // }

  double get maxY {
    final double adder = maxYData / 4;
    return maxYData + adder;
  }

  double get leftAxisInterval {
    maxYData = 80;

    final double adder = maxYData / 4;

    double stepper = 1;

    while (true) {
      if ((maxYData + adder) / stepper <= 5) {
        break;
      }
      stepper++;
    }
    return stepper;
  }

  Widget leftTitles(double value, TitleMeta meta) {
    final TextStyle style = buildTextStyle(
      fontSize: 12,
      fontWeight: 400,
      color: MjkColor.black,
    );

    String text = '${value.toStringAsFixed(0)}K';

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final List<String> titles = <String>[
      'Sen',
      'Sel',
      'Rab',
      'Kam',
      'Jum',
      'Sab',
      'Min',
    ];

    final Widget text = Text(
      titles[value.toInt()],
      style: buildTextStyle(
        fontSize: 14,
        fontWeight: 400,
        color: const Color(0xff454459),
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }
}
