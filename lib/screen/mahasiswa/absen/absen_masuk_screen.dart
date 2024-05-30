import 'dart:io';
import 'package:absensi_mahasiswa/widget/absen_card.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AbsenMasukScreen extends StatefulWidget {
  const AbsenMasukScreen({super.key});

  @override
  State<AbsenMasukScreen> createState() => _AbsenMasukScreenState();
}

class _AbsenMasukScreenState extends State<AbsenMasukScreen> {
  File? _selectedImage;

  Future _openCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image == null) return;
    setState(() {
      _selectedImage = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonWidget =
    FilledButton(
        onPressed: () {
          _openCamera();
        },
        style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            )
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(Icons.camera_alt_outlined),
            ),
            SizedBox(width: 8),
            Text(
              "Kamera",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        )
    );

    if (_selectedImage != null) {
      buttonWidget =
          FilledButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const FaceVerificationScreen())
                // );
              },
              style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Absen",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
          );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Absen Masuk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AbsenCard(),
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                "Foto selfie harus di dalam kelas!",
                style: TextStyle(
                  fontSize: 16,
                    color: Color(0xFF808080)
                ),
              ),
            ),
            const SizedBox(height: 16),
            _selectedImage != null ?
            Container( // jika file foto ada
              width: 380,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                image: DecorationImage(
                  image: FileImage(_selectedImage!),
                  fit: BoxFit.cover,
                ),
              ),
            ) :
            Container( // jika file foto belum ada
              width: 380,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: Colors.grey)
              ),
              child: const Icon(Icons.camera_alt, size: 48),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(
                width: double.infinity,
                height: 54,
                child: buttonWidget
              ),
            ),
          ],
        ),
      ),
    );
  }
}
