import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/ui/views/aktifitas_sales/activityandcustomer.dart';
import 'package:mjk_apps/ui/views/approval/approval.dart';
import 'package:mjk_apps/ui/views/dashboard_view.dart';
import 'package:mjk_apps/ui/views/orderjual/orderjual.dart';
import 'package:mjk_apps/ui/views/pengiriman/daftarpengiriman.dart';

class NavbarSalesView extends StatefulWidget {
  const NavbarSalesView({super.key});

  @override
  State<NavbarSalesView> createState() => _NavbarSalesViewState();
}

class _NavbarSalesViewState extends State<NavbarSalesView> {
  int _selectedIndex = 0;

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
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Sales',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'Order Jual',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fire_truck_outlined),
                label: 'Pengiriman',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist),
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
