import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/petak/petak_screen.dart';
import 'package:kkw_application/screens/tabbar_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ListColor.brokenWhiteColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.pop(context);
                        /* Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TabBarScreen())); */
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Icon(Icons.arrow_back_ios_rounded,
                              color: ListColor.blackColor),),
                    ), 
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ListColor.whiteColor,
                          border: Border.all(
                            color: ListColor.primaryColor,
                            width: 1
                          )
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search_outlined, color: ListColor.primaryColor),
                            hintText: 'Cari...',
                            hintStyle: GoogleFonts.poppins(
                                color: ListColor.grayColor,
                            ),
                            labelStyle: GoogleFonts.poppins(
                              color: ListColor.secondaryColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                //! Hasil pencarian disini

              ],
            ),
          ),
        ],
      )),
    ));
  }
}
