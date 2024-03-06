import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/utils/Colors.dart';

class ClassTFFieldNik extends StatelessWidget {
  final String labelText, hintText, errorRequired, errorMin, errorMax;
  // final String emailValidator;
  final int minInput, maxInput;
  final Icon prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  const ClassTFFieldNik({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.errorRequired,
    required this.errorMin,
    required this.errorMax,
    required this.minInput,
    required this.maxInput,
    required this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    // this.emailValidator = 'email mu error',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: ListColor.secondaryColor),
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ListColor.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border:
            const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        prefixIcon: prefixIcon,
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: errorRequired),
        MinLengthValidator(minInput, errorText: errorMin),
        MaxLengthValidator(maxInput, errorText: errorMax),
        // EmailValidator(errorText: emailValidator)
      ]),
    );
  }
}

class ClassTFFieldPassword extends StatelessWidget {
  final String labelText, hintText, errorRequired;
  final Icon prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  const ClassTFFieldPassword({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.errorRequired,
    required this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    // this.emailValidator = 'email mu error',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: ListColor.secondaryColor),
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ListColor.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border:
            const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        prefixIcon: prefixIcon,
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: errorRequired),
        // EmailValidator(errorText: emailValidator)
      ]),
    );
  }
}

class ClassTFFieldPhoneNumber extends StatelessWidget {
  final String labelText, hintText, errorRequired;
  final Icon prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  const ClassTFFieldPhoneNumber({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.errorRequired,
    required this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.number,
    // this.emailValidator = 'email mu error',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: ListColor.secondaryColor),
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ListColor.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border:
            const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        prefixIcon: prefixIcon,
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: errorRequired),
        // EmailValidator(errorText: emailValidator)
      ]),
    );
  }
}

class ClassTFFieldEmail extends StatelessWidget {
  final String labelText, hintText, errorRequired, emailValidator;
  final Icon prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;


  const ClassTFFieldEmail({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.errorRequired,
    required this.prefixIcon,
    required this.emailValidator,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: ListColor.secondaryColor),
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ListColor.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border:
            const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        prefixIcon: prefixIcon,
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: errorRequired),
        EmailValidator(errorText: emailValidator)
      ]),
    );
  }
}
