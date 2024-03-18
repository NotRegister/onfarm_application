import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kkw_application/screens/login_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.pushReplacementNamed(context, '/login');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: ListColor.whiteColor,
        ),
        alignment: Alignment.center,
        width: double.infinity,
        child: Image.asset('assets/logo/PTPN1_SIKKW.png', width: 200, height: 200, fit: BoxFit.fill,),
      ),
    );
  }
}
