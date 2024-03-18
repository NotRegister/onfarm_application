import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/petak/keterangan_petak_screen.dart';
import 'package:kkw_application/utils/Colors.dart';
import 'package:kkw_application/widgets/card_spta.dart';
import 'package:kkw_application/widgets/popup.dart';

class KeteranganSptaScreen extends StatefulWidget {
  const KeteranganSptaScreen({super.key});

  @override
  State<KeteranganSptaScreen> createState() => _KeteranganSptaScreenState();
}

class _KeteranganSptaScreenState extends State<KeteranganSptaScreen> {
  late final OverlayPortalController _infoPopupController;

  @override
  void initState() {
    super.initState();
    _infoPopupController = OverlayPortalController();
  }

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
                Text(
                  'C23241 / AFD05',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ListColor.primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daftar Nomor SPTA',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ListColor.secondaryColor),
                    ),
                    _informationButton(controller: _infoPopupController)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardSpta(bgCardColor: ListColor.successColor,),
                const CardSpta(bgCardColor: ListColor.purpleColor,),
                const CardSpta(bgCardColor: ListColor.blueColor,),
                const CardSpta(bgCardColor: ListColor.primaryColor,),
                const CardSptaGagal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class _informationButton extends StatelessWidget {
  const _informationButton({required this.controller});
  final OverlayPortalController controller;

  @override
  Widget build(BuildContext context) {
    return Popup(
      follower: _HelpOverlay(controller.hide),
      followerAnchor: Alignment.topRight,
      targetAnchor: Alignment.topRight,
      controller: controller,
      child: TextButton(
        onPressed: controller.show,
        child: const Row(
          children: [
            Icon(
              Icons.help_rounded,
              color: ListColor.secondaryColor,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class _HelpOverlay extends StatelessWidget {
  const _HelpOverlay(this.hide);

  final VoidCallback hide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Card(
        margin: EdgeInsets.zero,
        surfaceTintColor: Colors.white,
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pengertian warna Nomor SPTA',
                    style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: hide,
                    icon: const Icon(Icons.cancel),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10, right: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ListColor.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Belum sampai',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ListColor.grayColor,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        thickness: 3,
                        color: ListColor.lightGrayColor,
                      ),
                    ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ListColor.errorColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Gagal berangkat',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ListColor.grayColor,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        thickness: 3,
                        color: ListColor.lightGrayColor,
                      ),
                    ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ListColor.blueColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Sedang timbang',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ListColor.grayColor,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        thickness: 3,
                        color: ListColor.lightGrayColor,
                      ),
                    ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ListColor.purpleColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Sudah timbang',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ListColor.grayColor,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        thickness: 3,
                        color: ListColor.lightGrayColor,
                      ),
                    ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ListColor.successColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Menghasilkan gula',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ListColor.grayColor,
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
    );
  }
}
