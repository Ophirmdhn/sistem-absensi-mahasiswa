import 'package:absensi_mahasiswa/screen/mahasiswa/face_registration/face_registration_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/history/history_absen_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/history/history_tab_layout.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/home_header.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/main_card.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/home/widget/second_card.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/jadwal/schedule_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/notification/notification_screen.dart';
import 'package:absensi_mahasiswa/widget/history_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 50, right: 16),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: HomeHeader(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotificationScreen())
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 116,
                // height: 700,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: MainCard()
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SecondCard(
                              title: "Jadwal Perkuliahan",
                              imagePath: "assets/img_jadwal_perkuliahan.png",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ScheduleScreen())
                                );
                              },
                            ),
                            SecondCard(
                              title: "Registrasi",
                              imagePath: "assets/img_register.png",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const FaceRegistrationScreen())
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Riwayat Absen",
                              style: TextStyle(
                                  fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const HistoryTabLayout())
                                );
                              },
                              child: const Text(
                                "Lihat Semua >",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF555555)
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          children: [
                            HistoryCard(),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: HistoryCard(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: HistoryCard(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: HistoryCard(),
                            ),
                          ],
                        )
                      )
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