import 'package:absensi_mahasiswa/screen/dosen/home/widget/dosen_absen_card.dart';
import 'package:absensi_mahasiswa/screen/dosen/home/widget/dosen_bottom_sheet.dart';
import 'package:absensi_mahasiswa/screen/dosen/home/widget/dosen_home_header.dart';
import 'package:absensi_mahasiswa/screen/dosen/home/widget/dosen_main_card.dart';
import 'package:flutter/material.dart';
import '../jadwal/dosen_schedule_screen.dart';

class DosenHomeScreen extends StatelessWidget {
  const DosenHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Column(
          children: [
            DosenHomeHeader(
              onPressed: () {}
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height - 116,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: DosenMainCard(),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const DosenScheduleScreen())
                          );
                        },
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          "Jadwal Perkuliahan",
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    DosenAbsenCard(
                      title: "Sistem Informasi Manajemen",
                      time: "10 : 00 - 11 : 45",
                      clas: "Kelas VI A",
                      icon: Icons.lock_open,
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (ctx) => const DosenBottomSheet()
                        );
                      }
                    ),
                    const SizedBox(height: 16),
                    DosenAbsenCard(
                      title: "Manajemen Proyek",
                      time: "13 : 00 - 15 : 30",
                      clas: "Kelas VI A",
                      icon: Icons.lock_outline,
                      onPressed: () {}
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
