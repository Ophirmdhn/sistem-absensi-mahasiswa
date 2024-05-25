import 'package:absensi_mahasiswa/screen/mahasiswa/absen/absen_masuk_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/absen/izin_screen.dart';
import 'package:flutter/material.dart';

class ScheduleDetailScreen extends StatelessWidget {
  const ScheduleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Metode Penelitian"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 279,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                color: Color(0xFFD7E8F5),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dosen Pengampuh",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF808080)
                      ),
                    ),
                    Text(
                      "Hendra Nelva Saputra, S.Pd., M.Pd",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Mata Kuliah",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF808080)
                        ),
                      ),
                    ),
                    Text(
                      "Metodologi Pendidikan",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Waktu",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF808080)
                        ),
                      ),
                    ),
                    Text(
                      "Senin, 08 : 45 - 10 : 00",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Ruangan",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF808080)
                        ),
                      ),
                    ),
                    Text(
                      "E 403",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Status Absen",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF808080)
                        ),
                      ),
                    ),
                    Text(
                      "Buka",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               SizedBox(
                 width: 184,
                 height: 50,
                 child: FilledButton(
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const AbsenMasukScreen())
                     );
                   },
                     style: FilledButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16)
                       )
                     ),
                   child: const Text(
                     "Masuk",
                     style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                     ),
                   )
                 ),
               ),
                SizedBox(
                  width: 184,
                  height: 50,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const IzinScreen())
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                        ),
                        side: const BorderSide(
                          color: Color(0xFF124076),
                          width: 1.5
                        )
                      ),
                      child: const Text(
                        "Izin",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
