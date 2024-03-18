import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/utils/Colors.dart';

class PengaturanProfileButton extends StatelessWidget {
  const PengaturanProfileButton({
    super.key, this.onTap, required this.icon, required this.label,
  });

  final Function? onTap ;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap as void Function()?,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ListColor.whiteColor,
            border: Border.all(color: ListColor.lightGrayColor, width: 1),
          ),
          child:  Column(
            children: [
              Icon(
                icon, //Icons.manage_accounts_rounded,
                size: 30,
                color: ListColor.primaryColor,
              ),
              Text(
                label,
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}