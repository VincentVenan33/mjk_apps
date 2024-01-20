import 'package:flutter/material.dart';
import 'package:mjk_apps/core/app_constants/colors.dart';
import 'package:mjk_apps/ui/views/activity_sales_view.dart';
import 'package:mjk_apps/ui/views/dashboard_view.dart';
import 'package:mjk_apps/ui/views/katalog/katalog_produk_view_grid_owner.dart';
import 'package:mjk_apps/ui/views/sales_order/approval_order_penjualan_view.dart';

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
    KatalogProdukView(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 1: Business',
    ),
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
                icon: Icon(Icons.person),
                label: 'Sales',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'Katalog',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining_sharp),
                label: 'Pengiriman',
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
