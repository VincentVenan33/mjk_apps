import 'package:flutter/material.dart';

import '../../widgets/search_bar.dart' as search;

class ListPengirimanView extends StatefulWidget {
  const ListPengirimanView({super.key});

  @override
  State<ListPengirimanView> createState() => _ListPengirimanViewState();
}

class _ListPengirimanViewState extends State<ListPengirimanView> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchTextChanged(String query) {
    print("Teks pencarian: $query");
  }

  // Data untuk tabel
  final List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    // Mengisi data tabel dengan 20 baris contoh
    for (int i = 1; i <= 30; i++) {
      _data.add({
        'no': '0$i',
        'nama': 'Nama $i',
        'alamat': 'Alamat $i',
        'kode': 'Kode $i',
        'nomorhp': 'Nomor HP $i',
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE1E6E8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            "Pengiriman",
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 17.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                color: const Color(0xFFE1E6E8),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'List Pengiriman',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      search.SearchBar(
                        controller: _searchController,
                        hintText: 'Cari pengiriman...',
                        onChanged: _onSearchTextChanged,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: PaginatedDataTable(
                  header: const Text('Data Pengiriman'),
                  columns: const [
                    DataColumn(label: Text('No')),
                    DataColumn(label: Text('Nama')),
                    DataColumn(label: Text('Alamat')),
                    DataColumn(label: Text('Kode')),
                    DataColumn(label: Text('Nomor HP')),
                  ],
                  source: _DataSource(_data),
                  rowsPerPage: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DataSource extends DataTableSource {
  _DataSource(this.data);

  final List<Map<String, dynamic>> data;

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) {
      return null;
    }
    final rowData = data[index];
    return DataRow(cells: [
      DataCell(Text(rowData['no'].toString())),
      DataCell(Text(rowData['nama'].toString())),
      DataCell(Text(rowData['alamat'].toString())),
      DataCell(Text(rowData['kode'].toString())),
      DataCell(Text(rowData['nomorhp'].toString())),
    ]);
  }

  @override
  int get rowCount => data.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
