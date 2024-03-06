import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/home_screen.dart';
import 'package:kkw_application/screens/tabbar_screen.dart';
import 'package:kkw_application/screens/login_screen.dart';
import 'package:kkw_application/utils/Colors.dart';
import 'package:kkw_application/widgets/text_form_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  'Daftar',
                  style: GoogleFonts.poppins(
                      color: ListColor.primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight
                          .w600), 
                ),
                Text(
                  'Selamat datang di aplikasi ON FARM. Daftarkan data diri anda',
                  style: GoogleFonts.poppins(
                      color: ListColor.secondaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight
                          .w400),
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
                        errorRequired: 'Pastikan NIK anda sudah terisi',
                        errorMin: '* Masukkan NIK minimal 8 digit',
                        errorMax: '* Masukkan NIK maksimal 8 digit',
                        minInput: 8,
                        maxInput: 8,
                        prefixIcon: Icon(Icons.numbers),
                      ),

                      const SizedBox(height: 15),
                      const ClassTFFieldPassword(
                        labelText: 'Password',
                        hintText: 'Masukkan password anda',
                        errorRequired: 'Pastikan password anda sudah terisi',
                        prefixIcon: Icon(Icons.password),
                        obscureText: true,
                      ),

                      const SizedBox(height: 15),
                      const ClassTFFieldPhoneNumber(
                        labelText: 'Nomor Handphone',
                        hintText: 'Masukkan nomor hp anda..',
                        errorRequired: '* Required',
                        prefixIcon: Icon(Icons.perm_contact_cal_rounded),
                      ),

                      const SizedBox(height: 15),
                      const ClassTFFieldEmail(
                        labelText: 'Email',
                        hintText: 'Masukkan email anda..',
                        errorRequired: '* Required',
                        emailValidator: 'Masukkan email yang valid',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),

                      const SizedBox(height: 15),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(10),
                        dashPattern: const [3, 4],
                        color: ListColor.grayColor,
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.upload,
                                color: ListColor.grayColor,
                              ),
                              Text(
                                'Ketuk untuk unggah',
                                style: GoogleFonts.poppins(color: ListColor.grayColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeScreen()));
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
                              'Daftar',
                              style: TextStyle(color: ListColor.secondaryColor),
                            )),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sudah mempunyai akun ?',
                            style: GoogleFonts.poppins(color: ListColor.grayColor),
                          ),
                          const SizedBox(width: 5),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                            },
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(EdgeInsets.zero),
                              overlayColor: MaterialStatePropertyAll(Colors.transparent),
                            ),
                            child: Text(
                              'Login Sekarang',
                              style: GoogleFonts.poppins(color: ListColor.primaryColor),
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
