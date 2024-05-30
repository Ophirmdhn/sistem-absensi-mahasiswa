import 'package:absensi_mahasiswa/screen/mahasiswa/history/history_tab_layout.dart';
import 'package:absensi_mahasiswa/widget/history_card.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat Absen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
