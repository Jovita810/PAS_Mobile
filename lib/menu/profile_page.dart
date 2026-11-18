
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Colors.white;
    const textColor = Colors.black;
    const secondaryColor = Colors.black54;
    const cardColor = Color(0xFFF0F0F0);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.share,
                    color: textColor,
                    size: 28,
                  ),
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.settings,
                    color: textColor,
                    size: 28,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const CircleAvatar(
              radius: 65,
              backgroundColor: Color(0xFFEEEEEE),
              child: Icon(
                Icons.pets,
                size: 65,
                color: textColor,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Jovita Theodora Atmajaya",
              style: TextStyle(
                color: textColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: secondaryColor,
                  size: 18,
                ),
                SizedBox(width: 6),
                Text(
                  "jovitatheodora",
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Text(
              "0 pengikut · 1 mengikuti",
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              "Biodata",
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Kelas / No.Absen: 11 PPLG 1 / 16",
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),

            const Text(
              "Deskripsi: Siswa kelas 11 PPLG 1 absen 16",
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
