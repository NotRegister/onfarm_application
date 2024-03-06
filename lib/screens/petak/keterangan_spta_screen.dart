import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/petak/keterangan_petak_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class KeteranganSptaScreen extends StatefulWidget {
  const KeteranganSptaScreen({super.key});

  @override
  State<KeteranganSptaScreen> createState() => _KeteranganSptaScreenState();
}

class _KeteranganSptaScreenState extends State<KeteranganSptaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ListColor.brokenWhiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const KeteranganPetakScreen())),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Icon(Icons.arrow_back_ios_new)),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 13),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ListColor.whiteColor),
                        child: Row(
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
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: ListColor.successColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExpansionTile(
                      shape: const Border(),
                      textColor: ListColor.whiteColor,
                      collapsedIconColor: ListColor.whiteColor,
                      iconColor: ListColor.whiteColor,
                      title: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ListColor.successColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nomor SPTA 1',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.whiteColor),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  '04/03/2023',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: ListColor.whiteColor),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'N 1080 B',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.whiteColor),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'PG Djatiroto',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ListColor.whiteColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      children: [
                        Container(
                          color: ListColor.whiteColor,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Berat Tebu',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text('5 Ton',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tanggal Masuk PG',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('27/9/23 - 13:00',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tanggal Timbang',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('29/9/23 - 12:00',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Berat Gula',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('480,71 Kg',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Rendemen',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('4,2%',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Biaya Tebang',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('Rp 1.500.000,00',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Biaya Angkut',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('Rp 1.300.000,00',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: ListColor.lightGrayColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Pendapatan',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text('Rp 7.300.000,00',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
