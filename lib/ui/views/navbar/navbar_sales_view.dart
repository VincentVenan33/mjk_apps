import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/activityandcustomer.dart';
import 'package:mjk_apps/ui/views/approval/approval.dart';
import 'package:mjk_apps/ui/views/dashboard_view.dart';
import 'package:mjk_apps/ui/views/orderjual/orderjual.dart';
import 'package:mjk_apps/ui/views/pengiriman/daftarpengiriman.dart';

class NavbarSalesViewParam {
  NavbarSalesViewParam({int? menuIndex}) : menuIndex = menuIndex ?? 0;

  final int? menuIndex;
}

class NavbarSalesView extends StatefulWidget {
  const NavbarSalesView({
    required this.param,
    super.key,
  });

  final NavbarSalesViewParam param;
  @override
  State<NavbarSalesView> createState() => _NavbarSalesViewState();
}

class _NavbarSalesViewState extends State<NavbarSalesView> {
  int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Access widget property here
    NavbarSalesViewParam param = widget.param;

    // If menuIndex is not null, use its value, otherwise use the default value 0
    _selectedIndex = param.menuIndex ?? 0;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardView(),
    ActivitySalesView(),
    OrderJualView(),
    DaftarPengirimanView(),
    ApprovalView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          BottomNavigationBar(
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(_selectedIndex == 0
                      ? 'assets/icons/home_active.png'
                      : 'assets/icons/home_inactive.png'),
                  size: 24,
                ),
                activeIcon: const ImageIcon(
                  AssetImage('assets/icons/home_active.png'),
                  size: 24,
                ),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(_selectedIndex == 0
                      ? 'assets/icons/sales_active.png'
                      : 'assets/icons/sales_inactive.png'),
                  size: 24,
                ),
                activeIcon: const ImageIcon(
                  AssetImage('assets/icons/sales_active.png'),
                  size: 24,
                ),
                label: 'Sales',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(_selectedIndex == 0
                      ? 'assets/icons/order_active.png'
                      : 'assets/icons/order_inactive.png'),
                  size: 24,
                ),
                activeIcon: const ImageIcon(
                  AssetImage('assets/icons/order_active.png'),
                  size: 24,
                ),
                label: 'Order Jual',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(_selectedIndex == 0
                      ? 'assets/icons/pengiriman_active.png'
                      : 'assets/icons/pengiriman_inactive.png'),
                  size: 24,
                ),
                activeIcon: const ImageIcon(
                  AssetImage('assets/icons/pengiriman_active.png'),
                  size: 24,
                ),
                label: 'Pengiriman',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(_selectedIndex == 0
                      ? 'assets/icons/approval_active.png'
                      : 'assets/icons/approval_inactive.png'),
                  size: 24,
                ),
                activeIcon: const ImageIcon(
                  AssetImage('assets/icons/approval_active.png'),
                  size: 24,
                ),
                label: 'Approval',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: MjkColor.navbarSelectedColor,
            unselectedItemColor: MjkColor.navbarUnselectedColor,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 5.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
