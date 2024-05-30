import 'package:absensi_mahasiswa/widget/history_card.dart';
import 'package:flutter/material.dart';

class HistoryTabLayout extends StatelessWidget {
  const HistoryTabLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Riwayat Absen"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Februari",
                ),
                Tab(text: "Maret",),
                Tab(text: "April",),
                Tab(text: "Mei",),
              ]
            ),
          ),
          body: const TabBarView(
            children: [
              // 1
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak ada riwayat!",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ],
              ),

              // 2
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak ada riwayat!",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ],
              ),

              // 3
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak ada riwayat!",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ],
              ),

              // 4
              Padding(
                padding: EdgeInsets.all(16),
                child: SingleChildScrollView(
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
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

