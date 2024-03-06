import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/petak/keterangan_anggaran_screen.dart';
import 'package:kkw_application/screens/petak/keterangan_spta_screen.dart';
import 'package:kkw_application/screens/petak/petak_screen.dart';
import 'package:kkw_application/utils/Colors.dart';
import 'package:kkw_application/widgets/indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class KeteranganPetakScreen extends StatefulWidget {
  const KeteranganPetakScreen({super.key});

  @override
  State<KeteranganPetakScreen> createState() => _ScreenState();
}

class _ScreenState extends State<KeteranganPetakScreen> {
  int touchedIndex = -1;

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
                    Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PetakScreen())),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Icon(Icons.arrow_back_ios_new)),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'C23241 / AFD05',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: ListColor.primaryColor),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Keterangan Petak',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
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
                                    'Deskripsi bloc',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: ListColor.primaryColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'PC 6K03 AFD05 BANTER 3,913 C23241 23/24',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.secondaryColor),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: ListColor.whiteColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Luas Halaman',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      '3,913',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: ListColor.secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: ListColor.whiteColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mandor',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Pak Rendi',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: ListColor.secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: ListColor.whiteColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jenis Tanaman',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Tebu',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: ListColor.secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: ListColor.whiteColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kategori Petak',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'TS-HG',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: ListColor.secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: ListColor.whiteColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bulan Tanam',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      '05',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: ListColor.secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: ListColor.whiteColor),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tahun Tanam',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: ListColor.primaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      '2023 / 2024',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: ListColor.secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Divider(
                        thickness: 3,
                        color: ListColor.lightGrayColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Anggaran',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ListColor.secondaryColor),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const KeteranganAnggaranScreen())),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: ListColor.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Lihat selengkapnya...',
                              style: GoogleFonts.poppins(color: ListColor.whiteColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 54,
                      animation: true,
                      lineHeight: 28.0,
                      animationDuration: 2000,
                      percent: 0.86,
                      center: Text(
                        "86%",
                        style: GoogleFonts.poppins(color: ListColor.whiteColor),
                      ),
                      barRadius: const Radius.circular(12),
                      progressColor: ListColor.errorColor,
                      backgroundColor: ListColor.successColor,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biaya Digunakan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '17.178.000,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.errorColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biaya MBK',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '20.000.000,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.successColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      //* Container piechart anggaran
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: ListColor.whiteColor,
                      ),
                      child: AspectRatio(
                        aspectRatio: 1.3,
                        child: Row(
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: PieChart(
                                  PieChartData(
                                    pieTouchData: PieTouchData(
                                      touchCallback:
                                          (FlTouchEvent event, pieTouchResponse) {
                                        setState(() {
                                          if (!event.isInterestedForInteractions ||
                                              pieTouchResponse == null ||
                                              pieTouchResponse.touchedSection == null) {
                                            touchedIndex = -1;
                                            return;
                                          }
                                          touchedIndex = pieTouchResponse
                                              .touchedSection!.touchedSectionIndex;
                                        });
                                      },
                                    ),
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    sectionsSpace: 3,
                                    centerSpaceRadius: 40,
                                    sections: _listPieAnggaran(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Indicator(
                                  color: Color.fromARGB(194, 195, 123, 1),
                                  text: 'Tanam ()',
                                  isSquare: false,
                                ),
                                Indicator(
                                  color: Color.fromARGB(255, 222, 222, 89),
                                  text: 'Pupuk I ()',
                                  isSquare: false,
                                ),
                                Indicator(
                                  color: Color.fromARGB(255, 178, 178, 1),
                                  text: 'Pupuk II ()',
                                  isSquare: false,
                                ),
                                Indicator(
                                  color: Color.fromARGB(186, 165, 221, 1),
                                  text: 'Pupuk Extra ()',
                                  isSquare: false,
                                ),
                                Indicator(
                                  color: Color.fromARGB(255, 95, 178, 1),
                                  text: 'Kerpras ()',
                                  isSquare: false,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                  color: Color.fromARGB(255, 36, 185, 180),
                                  text: 'Sulam ()',
                                  isSquare: false,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                  color: Color.fromARGB(255, 103, 61, 208),
                                  text: 'Pengairan ()',
                                  isSquare: false,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Belum Terbayar',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    const SizedBox(height: 15),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 54,
                      animation: true,
                      lineHeight: 28.0,
                      animationDuration: 2000,
                      percent: 0.20,
                      center: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            left: 30,
                            child: Text(
                              "20%",
                              style: GoogleFonts.poppins(color: ListColor.whiteColor),
                            ),
                          ),
                        ],
                      ),
                      barRadius: const Radius.circular(12),
                      progressColor: ListColor.errorColor,
                      backgroundColor: ListColor.successColor,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Belum Terbayar',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '2.178.000,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.errorColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biaya Terbayar',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '15.000.000,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.successColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Divider(
                        thickness: 3,
                        color: ListColor.lightGrayColor,
                      ),
                    ),
                    Text(
                      'Biaya Tebang Muat Angkut',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biaya Tebang',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '8.000.000,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.errorColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biaya Angkut',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '9.178.000,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.successColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Produksi',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Taksasi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.primaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '8 Ton',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.secondaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Realisasi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.primaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '7,6 Ton',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.secondaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Gula',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.primaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '5,6 Ton',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.secondaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: ListColor.whiteColor),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Rendemen rata-rata',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ListColor.primaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '7,9%',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: ListColor.secondaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: ListColor.whiteColor),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total SPTA',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ListColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '100 Lembar',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: ListColor.secondaryColor),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const KeteranganSptaScreen())),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: ListColor.primaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Lihat semua...',
                                style: GoogleFonts.poppins(color: ListColor.whiteColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: ListColor.whiteColor,
                      ),
                      child: AspectRatio(
                        aspectRatio: 1.3,
                        child: Row(
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: PieChart(
                                  PieChartData(
                                    pieTouchData: PieTouchData(
                                      touchCallback:
                                          (FlTouchEvent event, pieTouchResponse) {
                                        setState(() {
                                          if (!event.isInterestedForInteractions ||
                                              pieTouchResponse == null ||
                                              pieTouchResponse.touchedSection == null) {
                                            touchedIndex = -1;
                                            return;
                                          }
                                          touchedIndex = pieTouchResponse
                                              .touchedSection!.touchedSectionIndex;
                                        });
                                      },
                                    ),
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    sectionsSpace: 3,
                                    centerSpaceRadius: 40,
                                    sections: _listPieSpta(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Indicator(
                                  color: Color.fromARGB(194, 195, 123, 1),
                                  text: 'PG Djatiroto (40)',
                                  isSquare: false,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                  color: Color.fromARGB(186, 165, 221, 1),
                                  text: 'PG Asembagoes (35)',
                                  isSquare: false,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Indicator(
                                  color: Color.fromARGB(255, 178, 178, 1),
                                  text: 'PG Prajekan (25)',
                                  isSquare: false,
                                ),
                              ],
                            ),
                          ],
                        ),
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

  List<PieChartSectionData> _listPieAnggaran() {
    return List.generate(7, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 0)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color.fromARGB(194, 195, 123, 1),
            title: '40%',
            value: 40,
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: const Color.fromARGB(186, 165, 221, 1),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 178, 178, 1),
            title: '10%',
            value: 10,
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 222, 222, 89),
            title: '20%',
            value: 20,
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 95, 178, 1),
            title: '10%',
            value: 10,
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 5:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 36, 185, 180),
            title: '5%',
            value: 5,
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 6:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 103, 61, 208),
            title: '5%',
            value: 5,
            radius: radius,
            titleStyle: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }

  List<PieChartSectionData> _listPieSpta() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 0)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color:
                const Color.fromARGB(194, 195, 123, 1) /* AppColors.contentColorBlue */,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: const Color.fromARGB(186, 165, 221, 1),
            value: 35,
            title: '35%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 178, 178, 1),
            value: 15,
            title: '25%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
