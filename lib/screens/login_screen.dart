import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/tabbar_screen.dart';
import 'package:kkw_application/screens/register_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

import '../widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                const SizedBox(height: 100),
                Text(
                  'Masuk',
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
                  'Selamat datang di aplikasi ON FARM. Masukkan data diri anda',
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
                      const ClassTFFieldNik(
                        keyboardType: TextInputType.number,
                        labelText: 'NIK',
                        hintText: 'Masukkan NIK anda..',
                        errorRequired: '* Required',
                        errorMin: '* Masukkan NIK minimal 8 digit',
                        errorMax: '* Masukkan NIK maksimal 8 digit',
                        minInput: 8,
                        maxInput: 8,
                        prefixIcon: Icon(Icons.numbers),
                      ),
                      const SizedBox(height: 15),
                      const ClassTFFieldPassword(
                        obscureText: true,
                        labelText: 'Password',
                        hintText: 'Masukkan Password anda..',
                        errorRequired: '* Pastikan password anda sudah terisi',
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.only(right: 10)),
                          overlayColor: MaterialStatePropertyAll(Colors.transparent),
                        ),
                        child: const Text(
                          'Lupa Password',
                          style: TextStyle(color: ListColor.grayColor),
                          textAlign: TextAlign.end,
                        ),
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
                                      builder: (context) => const TabBarScreen()));
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
                          child: const Text(
                            'Masuk',
                            style: TextStyle(color: ListColor.secondaryColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Belum mempunyai akun ?',
                            style: GoogleFonts.poppins(color: ListColor.grayColor),
                          ),
                          const SizedBox(width: 5),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()));
                            },
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(EdgeInsets.zero),
                              overlayColor: MaterialStatePropertyAll(Colors.transparent),
                            ),
                            child: Text(
                              'Daftar Sekarang',
                              style: GoogleFonts.poppins(color: ListColor.primaryColor, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      )
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
