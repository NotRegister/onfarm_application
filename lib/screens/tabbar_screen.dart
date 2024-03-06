import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kkw_application/screens/home_screen.dart';
import 'package:kkw_application/screens/petak/petak_screen.dart';
import 'package:kkw_application/utils/Colors.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _selectedTab = 0;
  final List<Widget> _pageList = <Widget>[];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageList.add(HomeScreen());
    _pageList.add(PetakScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        selectedItemColor: ListColor.primaryColor,
        unselectedItemColor: ListColor.lightGrayColor,
        unselectedLabelStyle: GoogleFonts.poppins(),
        onTap: (index) => _changeTab(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Petak'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment /* bar_chart */), label: 'Statistik')
        ],
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: _pageList,
      ),
    );
  }
}
