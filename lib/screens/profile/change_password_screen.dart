import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/profile/account_setting_screen.dart';
import 'package:kkw_application/screens/profile/change_password_berhasil_screen.dart';
import 'package:kkw_application/screens/tabbar_screen.dart';
import 'package:kkw_application/screens/register_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

import '../../widgets/text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ListColor.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    //Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountSettingScreen()));
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
                Text(
                  'Ubah Password?',
                  style: GoogleFonts.poppins(
                      color: ListColor.primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight
                          .w600), /* TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ), */
                ),
                Text(
                  'Masukkan data diri anda dengan benar untuk mendapatkan password baru',
                  style: GoogleFonts.poppins(
                      color: ListColor.secondaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight
                          .w400), /* TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ), */
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const ClassTFFieldPassword(
                        obscureText: true,
                        labelText: 'Password Lama',
                        hintText: 'Masukkan Password anda..',
                        errorRequired: '* Pastikan password anda sudah terisi',
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                      ),
                      const SizedBox(height: 15),
                      const ClassTFFieldPassword(
                        obscureText: true,
                        labelText: 'Password Baru',
                        hintText: 'Masukkan Password anda..',
                        errorRequired: '* Pastikan password anda sudah terisi',
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ChangePasswordBerhasilScreen()));
                              print('validated');
                            } else {
                              print('not validated');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: ListColor.primaryColor,
                          ),
                          child: Text(
                            'Ubah Password',
                            style: GoogleFonts.poppins(
                              color: ListColor.secondaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
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
        ),
      ),
    );
  }
}
