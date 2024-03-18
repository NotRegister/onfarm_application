import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/tabbar_screen.dart';
import 'package:kkw_application/utils/Colors.dart';
import 'package:kkw_application/widgets/pengaturan_profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ListColor.brokenWhiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        //Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TabBarScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: ListColor.blackColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/profile_image.png',
                          width: 110,
                          height: 110,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 15),
                        const Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'James Adam',
                                style:
                                    TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'jamesadamssinder@gmail.com',
                                style:
                                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'Pengaturan',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        PengaturanProfileButton(icon: Icons.manage_accounts_rounded, label: 'Akun',),
                        SizedBox(
                          width: 12,
                        ),
                        PengaturanProfileButton(icon: Icons.manage_search_rounded, label: 'FAQs',),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        PengaturanProfileButton(icon: Icons.book, label: 'Petunjuk User',),
                        SizedBox(
                          width: 12,
                        ),
                        PengaturanProfileButton(icon: Icons.manage_search_rounded, label: 'FAQs',),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


