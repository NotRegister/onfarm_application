import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/petak/keterangan_petak_screen.dart';
import 'package:kkw_application/screens/search_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class PetakScreen extends StatefulWidget {
  const PetakScreen({super.key});

  @override
  State<PetakScreen> createState() => _PetakScreenState();
}

class _PetakScreenState extends State<PetakScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ListColor.brokenWhiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 27, right: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 13),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ListColor.whiteColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.search,
                              color: ListColor.primaryColor,
                            ),
                            const Padding(padding: EdgeInsets.only(left: 10)),
                            Text(
                              'Cari daftar petak',
                              style: GoogleFonts.poppins(color: ListColor.lightGrayColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Petak',
                      style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const KeteranganPetakScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 21, vertical: 13),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ListColor.whiteColor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'C23241 / AFD05',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '3,913 M2',
                                      style: GoogleFonts.poppins(fontSize: 13),
                                    )
                                  ],
                                ),
                                Text(
                                  '2023 / 2024',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
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
