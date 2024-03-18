import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/profile/change_password_screen.dart';
import 'package:kkw_application/screens/profile/profile_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({super.key});

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            //Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProfileScreen()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: ListColor.blackColor,
                            ),
                          ),
                        ),
                        Text(
                          'Pengaturan Akun',
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: ListColor.secondaryColor),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Simpan',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: ListColor.grayColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/profile_image.png',
                      width: 110,
                      height: 110,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nama',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'James Adams',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: ListColor.lightGrayColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 20),
                          Flexible(
                            child: Text(
                              'jamesadamsinder@gmail.com',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: ListColor.lightGrayColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Flexible(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ChangePasswordScreen()));
                              },
                              borderRadius: BorderRadius.circular(10),
                              child: Text(
                                'Ganti Password?',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: ListColor.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
