import 'package:absensi_mahasiswa/screen/dosen/jadwal/dosen_schedule_detail_screen.dart';
import 'package:absensi_mahasiswa/screen/dosen/jadwal/widget/dosen_schedule_card.dart';
import 'package:flutter/material.dart';

class DosenScheduleScreen extends StatelessWidget {
  const DosenScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Perkuliahan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DosenScheduleCard(
                title: "Metode Penelitian",
                time: "08 : 45 - 10 : 00",
                clas: "Kelas VI A",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DosenScheduleDetailScreen())
                  );
                }
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                title: "Teknik Penulisan Karya Ilmiah",
                time: "08 : 45 - 10 : 00",
                clas: "Kelas VI A",
                onPressed: () {}
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                  title: "Manajemen Proyek",
                  time: "08 : 45 - 10 : 00",
                  clas: "Kelas VI A",
                  onPressed: () {}
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                  title: "Statistik Pendidikan",
                  time: "08 : 45 - 10 : 00",
                  clas: "Kelas VI A",
                  onPressed: () {}
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                  title: "Evaluasi Pembelajaran",
                  time: "08 : 45 - 10 : 00",
                  clas: "Kelas VI A",
                  onPressed: () {}
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                  title: "Sistem Informasi Manajemen",
                  time: "08 : 45 - 10 : 00",
                  clas: "Kelas VI A",
                  onPressed: () {}
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                  title: "Pengembangan Aplikasi Perangkat Mobile",
                  time: "08 : 45 - 10 : 00",
                  clas: "Kelas VI A",
                  onPressed: () {}
              ),
              const SizedBox(height: 16),
              DosenScheduleCard(
                  title: "Fundamen Multimedia",
                  time: "08 : 45 - 10 : 00",
                  clas: "Kelas II C",
                  onPressed: () {}
              ),
            ],
          ),
        ),
      ),
    );
  }
}
