import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/petak/keterangan_petak_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class KeteranganAnggaranScreen extends StatefulWidget {
  const KeteranganAnggaranScreen({super.key});

  @override
  State<KeteranganAnggaranScreen> createState() => _KeteranganAnggaranScreenState();
}

class _KeteranganAnggaranScreenState extends State<KeteranganAnggaranScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            // appBar: AppBar(),
            backgroundColor: ListColor.brokenWhiteColor,
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    title: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => 
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const KeteranganPetakScreen())),
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
                            ), 
                          ],
                        ),
                      ],
                    ), 
                    pinned: true,
                    floating: true,
                    bottom: TabBar(
                      indicatorPadding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      labelColor: ListColor.whiteColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: ListColor.secondaryColor,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: ListColor.primaryColor,
                      ),
                      tabs: [
                        Tab(
                            child: Text(
                          'Total',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                        )),
                        Tab(
                            child: Text(
                          'Terbayar',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                        )),
                        Tab(
                            child: Text(
                          'Pending',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                        )),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(children: [
                SingleChildScrollView(
                  //* Tab Total
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ListColor.whiteColor,
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // contentPadding: EdgeInsets.only(left: 15),
                                  prefixIcon:
                                      Icon(Icons.search, color: ListColor.primaryColor),
                                  hintText: 'Cari activity total',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Keterangan Total',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: ListColor.secondaryColor),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 1',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '04/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 1.300.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.successColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 2',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '01/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 1.300.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.errorColor),
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
                SingleChildScrollView(
                  //* Tab Terbayar
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // contentPadding: EdgeInsets.only(left: 15),
                                  prefixIcon:
                                      Icon(Icons.search, color: ListColor.primaryColor),
                                  hintText: 'Cari activity terbayar',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Keterangan Terbayar',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: ListColor.secondaryColor),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 1',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '04/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 1.300.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.successColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 2',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '03/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 300.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.successColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 3',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '02/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 1.500.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.successColor),
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
                SingleChildScrollView(
                  //* Tab Pending
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // contentPadding: EdgeInsets.only(left: 15),
                                  prefixIcon:
                                      Icon(Icons.search, color: ListColor.primaryColor),
                                  hintText: 'Cari activity pending',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Keterangan Pending',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: ListColor.secondaryColor),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 1',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '04/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 1.300.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.errorColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 2',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '03/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 300.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.errorColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ListColor.whiteColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Activity 3',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: ListColor.primaryColor),
                                      ),
                                      Text(
                                        'Kode Activity',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: ListColor.secondaryColor),
                                      ),
                                      Text(
                                        '02/03/2023',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ListColor.secondaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 1.500.000,00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: ListColor.errorColor),
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
              ]),
            ),
            /* const TabBarView(children: [
              Text('Total'),
              Text('Terbayar'),
              Text('Pending'),
            ]), */
          ),
        ),
      ),
    );
  }
}
