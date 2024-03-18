import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/login_screen.dart';
import 'package:kkw_application/screens/profile/profile_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class ChangePasswordBerhasilScreen extends StatelessWidget {
  const ChangePasswordBerhasilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ListColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/illustration_success_change_password.png'),
              const SizedBox(height: 35),
              Text(
                'Berhasil merubah password',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: ListColor.secondaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Selamat! Kata sandi Anda telah berhasil diperbarui. Anda sekarang dapat menggunakan kata sandi baru untuk masuk ke akun Anda.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: ListColor.blackColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 35),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ProfileScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ListColor.primaryColor,
                        padding: const EdgeInsets.symmetric( vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'Selanjutnya',
                        style: GoogleFonts.poppins(
                          color: ListColor.secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
