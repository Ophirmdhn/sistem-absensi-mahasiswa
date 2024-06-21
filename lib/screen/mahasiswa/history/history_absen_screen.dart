import 'package:absensi_mahasiswa/screen/mahasiswa/history/history_tab_layout.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat Absen"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Anuh"),
            HistoryTabLayout()
          ],
        ),
      ),
    );
  }
}
