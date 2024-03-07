import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/home_screen.dart';
import 'package:kkw_application/screens/tabbar_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class RegisterBerhasilScreen extends StatelessWidget {
  const RegisterBerhasilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ListColor.brokenWhiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0+30, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/illustration_success_account.png'),
              const SizedBox(height: 35),
              Text(
                'Berhasil Membuat Akun',
                style: GoogleFonts.poppins(
                  color: ListColor.secondaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Silahkan periksa email anda untuk mendapatkan password. Periksa folder spam jika tidak menerima email',
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
                                        builder: (context) => const TabBarScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ListColor.primaryColor,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'Selanjutnya',
                        style: GoogleFonts.poppins(
                          color: ListColor.whiteColor,
                          fontWeight: FontWeight.w400,
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
