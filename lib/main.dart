import 'package:absensi_mahasiswa/screen/mahasiswa/splash/splash_screen.dart';
import 'package:absensi_mahasiswa/screen/mahasiswa/history/history_tab_layout.dart';
import 'package:absensi_mahasiswa/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absensi Mahasiswa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF124076),
          primary: const Color(0xFF124076)
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.outfitTextTheme()
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const WelcomeScreen(),
      },
    );
  }
}